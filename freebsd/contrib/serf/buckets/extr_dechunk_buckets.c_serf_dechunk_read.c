
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {int used; char* line; int state; } ;
struct TYPE_6__ {int state; int body_left; int stream; TYPE_3__ linebuf; } ;
typedef TYPE_2__ dechunk_context_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_EGENERAL ;
 int APR_EOF ;
 int APR_FROM_OS_ERROR (int ) ;
 int APR_STATUS_IS_EOF (int ) ;
 int ERANGE ;
 int SERF_BUCKET_READ_ERROR (int ) ;
 int SERF_ERROR_TRUNCATED_HTTP_RESPONSE ;
 int SERF_LINEBUF_READY ;
 int SERF_NEWLINE_CRLF ;




 int apr_strtoi64 (char*,int *,int) ;
 int errno ;
 int serf_bucket_read (int ,int,char const**,int*) ;
 int serf_linebuf_fetch (TYPE_3__*,int ,int ) ;

__attribute__((used)) static apr_status_t serf_dechunk_read(serf_bucket_t *bucket,
                                      apr_size_t requested,
                                      const char **data, apr_size_t *len)
{
    dechunk_context_t *ctx = bucket->data;
    apr_status_t status;

    while (1) {
        switch (ctx->state) {
        case 129:


            status = serf_linebuf_fetch(&ctx->linebuf, ctx->stream,
                                        SERF_NEWLINE_CRLF);
            if (SERF_BUCKET_READ_ERROR(status))
                return status;


            if (ctx->linebuf.state == SERF_LINEBUF_READY) {


                if (ctx->linebuf.used == sizeof(ctx->linebuf.line))
                    return APR_FROM_OS_ERROR(ERANGE);
                ctx->linebuf.line[ctx->linebuf.used] = '\0';


                ctx->body_left = apr_strtoi64(ctx->linebuf.line, ((void*)0), 16);
                if (errno == ERANGE) {
                    return APR_FROM_OS_ERROR(ERANGE);
                }

                if (ctx->body_left == 0) {

                    ctx->state = 130;
                    status = APR_EOF;
                }
                else {

                    ctx->state = 131;
                }


                if (!status)
                    continue;
            }





            *len = 0;

            return status;

        case 131:

            if (requested > ctx->body_left) {
                requested = ctx->body_left;
            }


            status = serf_bucket_read(ctx->stream, requested, data, len);
            if (SERF_BUCKET_READ_ERROR(status))
                return status;




            ctx->body_left -= *len;
            if (!ctx->body_left) {
                ctx->state = 128;
                ctx->body_left = 2;
            }


            if (ctx->body_left && APR_STATUS_IS_EOF(status)) {
                return SERF_ERROR_TRUNCATED_HTTP_RESPONSE;
            }


            return status;

        case 128:

            status = serf_bucket_read(ctx->stream, ctx->body_left, data, len);
            if (SERF_BUCKET_READ_ERROR(status))
                return status;




            ctx->body_left -= *len;


            if (ctx->body_left && APR_STATUS_IS_EOF(status))
                return SERF_ERROR_TRUNCATED_HTTP_RESPONSE;

            if (!ctx->body_left) {
                ctx->state = 129;
            }


            *len = 0;

            if (status)
                return status;

            break;

        case 130:

            *len = 0;
            return APR_EOF;

        default:

            return APR_EGENERAL;
        }
    }

}
