
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* read_baton; int read; } ;
struct TYPE_5__ {int * progress_baton; int * progress_func; TYPE_2__ databuf; int * skt; } ;
typedef TYPE_1__ socket_context_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_socket_t ;


 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_socket ;
 int serf_databuf_init (TYPE_2__*) ;
 int socket_reader ;

serf_bucket_t *serf_bucket_socket_create(
    apr_socket_t *skt,
    serf_bucket_alloc_t *allocator)
{
    socket_context_t *ctx;


    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->skt = skt;

    serf_databuf_init(&ctx->databuf);
    ctx->databuf.read = socket_reader;
    ctx->databuf.read_baton = ctx;

    ctx->progress_func = ((void*)0);
    ctx->progress_baton = ((void*)0);
    return serf_bucket_create(&serf_bucket_type_socket, allocator, ctx);
}
