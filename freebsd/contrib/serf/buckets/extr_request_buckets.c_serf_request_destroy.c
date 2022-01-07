
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {scalar_t__ body; scalar_t__ headers; } ;
typedef TYPE_2__ request_context_t ;


 int serf_bucket_destroy (scalar_t__) ;
 int serf_default_destroy_and_data (TYPE_1__*) ;

__attribute__((used)) static void serf_request_destroy(serf_bucket_t *bucket)
{
  request_context_t *ctx = bucket->data;

  serf_bucket_destroy(ctx->headers);

  if (ctx->body)
    serf_bucket_destroy(ctx->body);

  serf_default_destroy_and_data(bucket);
}
