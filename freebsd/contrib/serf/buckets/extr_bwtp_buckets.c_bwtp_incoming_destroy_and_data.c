
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int allocator; TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {scalar_t__ state; int * headers; int * body; int * stream; scalar_t__ phrase; } ;
typedef TYPE_2__ incoming_context_t ;


 scalar_t__ STATE_STATUS_LINE ;
 int serf_bucket_destroy (int *) ;
 int serf_bucket_mem_free (int ,void*) ;
 int serf_default_destroy_and_data (TYPE_1__*) ;

__attribute__((used)) static void bwtp_incoming_destroy_and_data(serf_bucket_t *bucket)
{
    incoming_context_t *ctx = bucket->data;

    if (ctx->state != STATE_STATUS_LINE && ctx->phrase) {
        serf_bucket_mem_free(bucket->allocator, (void*)ctx->phrase);
    }

    serf_bucket_destroy(ctx->stream);
    if (ctx->body != ((void*)0))
        serf_bucket_destroy(ctx->body);
    serf_bucket_destroy(ctx->headers);

    serf_default_destroy_and_data(bucket);
}
