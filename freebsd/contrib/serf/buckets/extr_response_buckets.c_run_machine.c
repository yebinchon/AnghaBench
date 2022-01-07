
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int allocator; } ;
typedef TYPE_3__ serf_bucket_t ;
struct TYPE_13__ {int used; int state; } ;
struct TYPE_12__ {int code; } ;
struct TYPE_15__ {int state; int chunked; TYPE_2__ linebuf; void* body; int headers; int stream; TYPE_1__ sl; } ;
typedef TYPE_4__ response_context_t ;
typedef int apr_uint64_t ;
typedef int apr_status_t ;


 int APR_EGENERAL ;
 int APR_EOF ;
 int APR_FROM_OS_ERROR (int ) ;
 int APR_STATUS_IS_EOF (int ) ;
 int APR_SUCCESS ;
 int ERANGE ;
 int SERF_BUCKET_READ_ERROR (int ) ;
 int SERF_DEFLATE_DEFLATE ;
 int SERF_DEFLATE_GZIP ;
 int SERF_ERROR_REQUEST_LOST ;
 int SERF_LINEBUF_READY ;
 int SERF_NEWLINE_ANY ;





 int apr_strtoi64 (void const*,int *,int) ;
 int errno ;
 int expect_body (TYPE_4__*) ;
 int fetch_headers (TYPE_3__*,TYPE_4__*) ;
 int fetch_line (TYPE_4__*,int ) ;
 int parse_status_line (TYPE_4__*,int ) ;
 void* serf_bucket_barrier_create (int ,int ) ;
 void* serf_bucket_dechunk_create (void*,int ) ;
 void* serf_bucket_deflate_create (void*,int ,int ) ;
 void* serf_bucket_headers_get (int ,char*) ;
 void* serf_bucket_response_body_create (void*,int ,int ) ;
 void* serf_bucket_simple_create (int *,int ,int *,int *,int ) ;
 int strcasecmp (char*,void const*) ;

__attribute__((used)) static apr_status_t run_machine(serf_bucket_t *bkt, response_context_t *ctx)
{
    apr_status_t status = APR_SUCCESS;

    switch (ctx->state) {
    case 129:



        status = fetch_line(ctx, SERF_NEWLINE_ANY);
        if (SERF_BUCKET_READ_ERROR(status))
            return status;

        if (ctx->linebuf.state == SERF_LINEBUF_READY) {

            status = parse_status_line(ctx, bkt->allocator);
            if (status)
                return status;


            if (ctx->sl.code == 101) {
                ctx->body =
                    serf_bucket_barrier_create(ctx->stream, bkt->allocator);
                ctx->state = 131;
                break;
            }


            ctx->state = 130;
        }
        else {




            if (APR_STATUS_IS_EOF(status)) {
                return SERF_ERROR_REQUEST_LOST;
            }
        }
        break;
    case 130:
        status = fetch_headers(bkt, ctx);
        if (SERF_BUCKET_READ_ERROR(status))
            return status;




        if (ctx->linebuf.state == SERF_LINEBUF_READY && !ctx->linebuf.used) {
            const void *v;


            ctx->state = 132;



            if (!expect_body(ctx)) {
                ctx->body = serf_bucket_simple_create(((void*)0), 0, ((void*)0), ((void*)0),
                                                      bkt->allocator);
                ctx->state = 132;
                break;
            }

            ctx->body =
                serf_bucket_barrier_create(ctx->stream, bkt->allocator);


            v = serf_bucket_headers_get(ctx->headers, "Content-Length");
            if (v) {
                apr_uint64_t length;
                length = apr_strtoi64(v, ((void*)0), 10);
                if (errno == ERANGE) {
                    return APR_FROM_OS_ERROR(ERANGE);
                }
                ctx->body = serf_bucket_response_body_create(
                              ctx->body, length, bkt->allocator);
            }
            else {
                v = serf_bucket_headers_get(ctx->headers, "Transfer-Encoding");


                if (v && strcasecmp("chunked", v) == 0) {
                    ctx->chunked = 1;
                    ctx->body = serf_bucket_dechunk_create(ctx->body,
                                                           bkt->allocator);
                }
            }
            v = serf_bucket_headers_get(ctx->headers, "Content-Encoding");
            if (v) {

                if (v && strcasecmp("gzip", v) == 0) {
                    ctx->body =
                        serf_bucket_deflate_create(ctx->body, bkt->allocator,
                                                   SERF_DEFLATE_GZIP);
                }
                else if (v && strcasecmp("deflate", v) == 0) {
                    ctx->body =
                        serf_bucket_deflate_create(ctx->body, bkt->allocator,
                                                   SERF_DEFLATE_DEFLATE);
                }
            }
        }
        break;
    case 132:

        break;
    case 128:
        status = fetch_headers(bkt, ctx);
        if (SERF_BUCKET_READ_ERROR(status))
            return status;


        if (ctx->linebuf.state == SERF_LINEBUF_READY && !ctx->linebuf.used) {
            ctx->state = 131;
            return APR_EOF;
        }
        break;
    case 131:
        return APR_EOF;
    default:

        return APR_EGENERAL;
    }

    return status;
}
