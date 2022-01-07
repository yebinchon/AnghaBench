
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * our_stream; } ;
typedef TYPE_1__ ssl_context_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
typedef TYPE_2__ serf_bucket_t ;


 int serf_bucket_destroy (int ) ;
 int serf_ssl_destroy_and_data (TYPE_2__*) ;

__attribute__((used)) static void serf_ssl_decrypt_destroy_and_data(serf_bucket_t *bucket)
{
    ssl_context_t *ctx = bucket->data;

    serf_bucket_destroy(*ctx->our_stream);

    serf_ssl_destroy_and_data(bucket);
}
