
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int allocator; } ;
typedef TYPE_2__ serf_bucket_t ;
struct TYPE_9__ {int used; int state; } ;
struct TYPE_11__ {int state; TYPE_1__ linebuf; int body; int type; int length; int stream; } ;
typedef TYPE_3__ incoming_context_t ;
typedef int apr_status_t ;


 int APR_EGENERAL ;
 int APR_EOF ;
 int APR_STATUS_IS_EOF (int ) ;
 int APR_SUCCESS ;
 int SERF_BUCKET_READ_ERROR (int ) ;
 int SERF_ERROR_REQUEST_LOST ;
 int SERF_LINEBUF_READY ;
 int SERF_NEWLINE_ANY ;




 int fetch_headers (int ,TYPE_3__*) ;
 int fetch_line (TYPE_3__*,int ) ;
 int parse_status_line (TYPE_3__*,int ) ;
 int serf_bucket_barrier_create (int ,int ) ;
 int serf_bucket_limit_create (int ,int ,int ) ;

__attribute__((used)) static apr_status_t run_machine(serf_bucket_t *bkt, incoming_context_t *ctx)
{
    apr_status_t status = APR_SUCCESS;

    switch (ctx->state) {
    case 128:



        status = fetch_line(ctx, SERF_NEWLINE_ANY);
        if (SERF_BUCKET_READ_ERROR(status))
            return status;

        if (ctx->linebuf.state == SERF_LINEBUF_READY && ctx->linebuf.used) {

            status = parse_status_line(ctx, bkt->allocator);
            if (status)
                return status;

            if (ctx->length) {
                ctx->body =
                    serf_bucket_barrier_create(ctx->stream, bkt->allocator);
                ctx->body = serf_bucket_limit_create(ctx->body, ctx->length,
                                                     bkt->allocator);
                if (!ctx->type) {
                    ctx->state = 129;
                } else {
                    ctx->state = 131;
                }
            } else {
                ctx->state = 130;
            }
        }
        else {




            if (APR_STATUS_IS_EOF(status)) {
                return SERF_ERROR_REQUEST_LOST;
            }
        }
        break;
    case 129:
        status = fetch_headers(ctx->body, ctx);
        if (SERF_BUCKET_READ_ERROR(status))
            return status;




        if (ctx->linebuf.state == SERF_LINEBUF_READY && !ctx->linebuf.used) {

            ctx->state = 130;
        }
        break;
    case 131:

        break;
    case 130:
        return APR_EOF;
    default:

        return APR_EGENERAL;
    }

    return status;
}
