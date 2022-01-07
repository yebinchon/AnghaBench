
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int allocator; TYPE_3__* data; } ;
typedef TYPE_2__ serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_11__ {scalar_t__ (* hold_open ) (int ,TYPE_2__*) ;int hold_open_baton; TYPE_1__* list; } ;
typedef TYPE_3__ aggregate_context_t ;
struct TYPE_9__ {scalar_t__ next; TYPE_2__* bucket; } ;


 scalar_t__ APR_EAGAIN ;
 scalar_t__ APR_EOF ;
 scalar_t__ APR_SUCCESS ;
 int cleanup_aggregate (TYPE_3__*,int ) ;
 scalar_t__ serf_bucket_peek (TYPE_2__*,char const**,scalar_t__*) ;
 scalar_t__ stub1 (int ,TYPE_2__*) ;
 scalar_t__ stub2 (int ,TYPE_2__*) ;

__attribute__((used)) static apr_status_t serf_aggregate_peek(serf_bucket_t *bucket,
                                        const char **data,
                                        apr_size_t *len)
{
    aggregate_context_t *ctx = bucket->data;
    serf_bucket_t *head;
    apr_status_t status;

    cleanup_aggregate(ctx, bucket->allocator);


    if (!ctx->list) {
        *len = 0;
        if (ctx->hold_open) {
            status = ctx->hold_open(ctx->hold_open_baton, bucket);
            if (status == APR_EAGAIN)
                status = APR_SUCCESS;
            return status;
        }
        else {
            return APR_EOF;
        }
    }

    head = ctx->list->bucket;

    status = serf_bucket_peek(head, data, len);

    if (status == APR_EOF) {
        if (ctx->list->next) {
            status = APR_SUCCESS;
        } else {
            if (ctx->hold_open) {
                status = ctx->hold_open(ctx->hold_open_baton, bucket);
                if (status == APR_EAGAIN)
                    status = APR_SUCCESS;
                return status;
            }
        }
    }

    return status;
}
