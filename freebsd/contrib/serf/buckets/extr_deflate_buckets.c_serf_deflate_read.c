
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_15__ {int allocator; TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_14__ {unsigned long total_out; unsigned char* next_in; int * avail_in; int * avail_out; scalar_t__ next_out; } ;
struct TYPE_16__ {int state; unsigned long crc; void* stream_status; TYPE_1__* stream; TYPE_1__* inflate_stream; int * stream_size; int * stream_left; int format; TYPE_10__ zstream; int * bufferSize; scalar_t__ buffer; int windowSize; int * hdr_buffer; } ;
typedef TYPE_2__ deflate_context_t ;
typedef void* apr_status_t ;
typedef int * apr_size_t ;
typedef int Bytef ;


 void* APR_EGENERAL ;
 int APR_STATUS_IS_EAGAIN (void*) ;
 int APR_STATUS_IS_EOF (void*) ;
 void* APR_SUCCESS ;
 int * DEFLATE_VERIFY_SIZE ;
 int SERF_BUCKET_READ_ERROR (void*) ;
 TYPE_1__* SERF_BUCKET_SIMPLE_STRING_LEN (char const*,int *,int ) ;


 void* SERF_ERROR_DECOMPRESSION_FAILED ;
 int Z_BUF_ERROR ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 void* crc32 (unsigned long,int const*,int *) ;
 int * deflate_magic ;
 unsigned long getLong (unsigned char*) ;
 int inflate (TYPE_10__*,int ) ;
 int inflateEnd (TYPE_10__*) ;
 int inflateInit2 (TYPE_10__*,int ) ;
 int memcpy (int *,char const*,int *) ;
 int serf_bucket_aggregate_append (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* serf_bucket_aggregate_create (int ) ;
 int serf_bucket_aggregate_prepend (TYPE_1__*,TYPE_1__*) ;
 void* serf_bucket_read (TYPE_1__*,int *,char const**,int **) ;

__attribute__((used)) static apr_status_t serf_deflate_read(serf_bucket_t *bucket,
                                      apr_size_t requested,
                                      const char **data, apr_size_t *len)
{
    deflate_context_t *ctx = bucket->data;
    apr_status_t status;
    const char *private_data;
    apr_size_t private_len;
    int zRC;

    while (1) {
        switch (ctx->state) {
        case 130:
        case 129:
            status = serf_bucket_read(ctx->stream, ctx->stream_left,
                                      &private_data, &private_len);

            if (SERF_BUCKET_READ_ERROR(status)) {
                return status;
            }

            memcpy(ctx->hdr_buffer + (ctx->stream_size - ctx->stream_left),
                   private_data, private_len);

            ctx->stream_left -= private_len;

            if (ctx->stream_left == 0) {
                ctx->state++;
                if (APR_STATUS_IS_EAGAIN(status)) {
                    *len = 0;
                    return status;
                }
            }
            else if (status) {
                *len = 0;
                return status;
            }
            break;
        case 133:
            if (ctx->hdr_buffer[0] != deflate_magic[0] ||
                ctx->hdr_buffer[1] != deflate_magic[1]) {
                return SERF_ERROR_DECOMPRESSION_FAILED;
            }
            if (ctx->hdr_buffer[3] != 0) {
                return SERF_ERROR_DECOMPRESSION_FAILED;
            }
            ctx->state++;
            break;
        case 128:
        {
            unsigned long compCRC, compLen, actualLen;


            compCRC = getLong((unsigned char*)ctx->hdr_buffer);
            if (ctx->crc != compCRC) {
                return SERF_ERROR_DECOMPRESSION_FAILED;
            }
            compLen = getLong((unsigned char*)ctx->hdr_buffer + 4);


            actualLen = ctx->zstream.total_out;
            actualLen &= 0xFFFFFFFF;
            if (actualLen != compLen) {
                return SERF_ERROR_DECOMPRESSION_FAILED;
            }
            ctx->state++;
            break;
        }
        case 131:
            zRC = inflateInit2(&ctx->zstream, ctx->windowSize);
            if (zRC != Z_OK) {
                return SERF_ERROR_DECOMPRESSION_FAILED;
            }
            ctx->zstream.next_out = ctx->buffer;
            ctx->zstream.avail_out = ctx->bufferSize;
            ctx->state++;
            break;
        case 134:
            inflateEnd(&ctx->zstream);
            serf_bucket_aggregate_prepend(ctx->stream, ctx->inflate_stream);
            ctx->inflate_stream = 0;
            ctx->state++;
            break;
        case 132:

            status = serf_bucket_read(ctx->inflate_stream, requested, data,
                                      len);
            if (SERF_BUCKET_READ_ERROR(status)) {
                return status;
            }

            if (APR_STATUS_IS_EOF(status)) {
                status = ctx->stream_status;
                if (APR_STATUS_IS_EOF(status)) {




                    status = APR_SUCCESS;
                }
            }
            if (*len != 0) {
                return status;
            }
            if (ctx->zstream.avail_in == 0) {



                ctx->stream_status = serf_bucket_read(ctx->stream,
                                                      ctx->bufferSize,
                                                      &private_data,
                                                      &private_len);

                if (SERF_BUCKET_READ_ERROR(ctx->stream_status)) {
                    return ctx->stream_status;
                }

                if (!private_len && APR_STATUS_IS_EAGAIN(ctx->stream_status)) {
                    *len = 0;
                    status = ctx->stream_status;
                    ctx->stream_status = APR_SUCCESS;
                    return status;
                }

                ctx->zstream.next_in = (unsigned char*)private_data;
                ctx->zstream.avail_in = private_len;
            }

            while (1) {

                zRC = inflate(&ctx->zstream, Z_NO_FLUSH);



                if (zRC == Z_BUF_ERROR || ctx->zstream.avail_out == 0) {
                    serf_bucket_t *tmp;
                    ctx->zstream.next_out = ctx->buffer;
                    private_len = ctx->bufferSize - ctx->zstream.avail_out;

                    ctx->crc = crc32(ctx->crc, (const Bytef *)ctx->buffer,
                                     private_len);


                    tmp = SERF_BUCKET_SIMPLE_STRING_LEN((char *)ctx->buffer,
                                                        private_len,
                                                        bucket->allocator);
                    serf_bucket_aggregate_append(ctx->inflate_stream, tmp);
                    ctx->zstream.avail_out = ctx->bufferSize;
                    break;
                }

                if (zRC == Z_STREAM_END) {
                    serf_bucket_t *tmp;

                    private_len = ctx->bufferSize - ctx->zstream.avail_out;
                    ctx->crc = crc32(ctx->crc, (const Bytef *)ctx->buffer,
                                     private_len);

                    tmp = SERF_BUCKET_SIMPLE_STRING_LEN((char *)ctx->buffer,
                                                        private_len,
                                                        bucket->allocator);
                    serf_bucket_aggregate_append(ctx->inflate_stream, tmp);

                    ctx->zstream.avail_out = ctx->bufferSize;


                    tmp = serf_bucket_aggregate_create(bucket->allocator);
                    serf_bucket_aggregate_prepend(tmp, ctx->stream);
                    ctx->stream = tmp;




                    tmp = SERF_BUCKET_SIMPLE_STRING_LEN(
                                        (const char*)ctx->zstream.next_in,
                                                     ctx->zstream.avail_in,
                                                     bucket->allocator);
                    serf_bucket_aggregate_prepend(ctx->stream, tmp);

                    switch (ctx->format) {
                    case 136:
                        ctx->stream_left = ctx->stream_size =
                            DEFLATE_VERIFY_SIZE;
                        ctx->state++;
                        break;
                    case 137:

                        ctx->state = 134;
                        break;
                    default:

                        return APR_EGENERAL;
                    }

                    break;
                }


                if (zRC != Z_OK) {
                    return SERF_ERROR_DECOMPRESSION_FAILED;
                }


            }

            status = serf_bucket_read(ctx->inflate_stream, requested, data,
                                      len);

            if (APR_STATUS_IS_EOF(status)) {
                status = ctx->stream_status;


                if (zRC != Z_STREAM_END)
                    return APR_SUCCESS;




                if (APR_STATUS_IS_EOF(status)) {





                    if (ctx->state != 132)
                        return APR_SUCCESS;
                    else
                        return SERF_ERROR_DECOMPRESSION_FAILED;
                }
            }
            return status;
        case 135:

            return serf_bucket_read(ctx->stream, requested, data, len);
        default:

            return APR_EGENERAL;
        }
    }


}
