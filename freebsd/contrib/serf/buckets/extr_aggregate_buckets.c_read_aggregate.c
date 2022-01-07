
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct iovec {scalar_t__ iov_len; } ;
struct TYPE_8__ {TYPE_3__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* bucket; } ;
typedef TYPE_2__ bucket_list_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_10__ {int hold_open_baton; int (* hold_open ) (int ,TYPE_1__*) ;TYPE_2__* list; TYPE_2__* done; } ;
typedef TYPE_3__ aggregate_context_t ;


 int APR_EOF ;
 scalar_t__ APR_STATUS_IS_EAGAIN (int ) ;
 int APR_SUCCESS ;
 scalar_t__ SERF_BUCKET_READ_ERROR (int ) ;
 int SERF_ERROR_WAIT_CONN ;
 scalar_t__ SERF_READ_ALL_AVAIL ;
 int serf_bucket_read_iovec (TYPE_1__*,scalar_t__,int,struct iovec*,int*) ;
 int stub1 (int ,TYPE_1__*) ;
 int stub2 (int ,TYPE_1__*) ;

__attribute__((used)) static apr_status_t read_aggregate(serf_bucket_t *bucket,
                                   apr_size_t requested,
                                   int vecs_size, struct iovec *vecs,
                                   int *vecs_used)
{
    aggregate_context_t *ctx = bucket->data;
    int cur_vecs_used;
    apr_status_t status;

    *vecs_used = 0;

    if (!ctx->list) {
        if (ctx->hold_open) {
            return ctx->hold_open(ctx->hold_open_baton, bucket);
        }
        else {
            return APR_EOF;
        }
    }

    status = APR_SUCCESS;
    while (requested) {
        serf_bucket_t *head = ctx->list->bucket;

        status = serf_bucket_read_iovec(head, requested, vecs_size, vecs,
                                        &cur_vecs_used);

        if (SERF_BUCKET_READ_ERROR(status))
            return status;


        *vecs_used += cur_vecs_used;

        if (cur_vecs_used > 0 || status) {
            bucket_list_t *next_list;




            if (!status || APR_STATUS_IS_EAGAIN(status) || status == SERF_ERROR_WAIT_CONN) {
                return status;
            }
            next_list = ctx->list->next;
            ctx->list->next = ctx->done;
            ctx->done = ctx->list;
            ctx->list = next_list;


            if (!ctx->list) {
                if (ctx->hold_open) {
                    return ctx->hold_open(ctx->hold_open_baton, bucket);
                }
                else {
                    return APR_EOF;
                }
            }






            if (requested != SERF_READ_ALL_AVAIL) {
                int i;

                for (i = 0; i < cur_vecs_used; i++)
                    requested -= vecs[i].iov_len;
            }


            vecs_size -= cur_vecs_used;
            vecs += cur_vecs_used;


            if (!requested || !vecs_size) {
                return APR_SUCCESS;
            }
        }
    }

    return status;
}
