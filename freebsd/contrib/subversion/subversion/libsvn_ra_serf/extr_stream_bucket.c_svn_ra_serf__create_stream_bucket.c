
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_ra_serf__stream_bucket_errfunc_t ;
struct TYPE_6__ {TYPE_1__* read_baton; int read; } ;
struct TYPE_5__ {TYPE_2__ databuf; void* errfunc_baton; int errfunc; int * stream; } ;
typedef TYPE_1__ stream_bucket_ctx_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;


 int * serf_bucket_create (int *,int *,TYPE_1__*) ;
 TYPE_1__* serf_bucket_mem_calloc (int *,int) ;
 int serf_databuf_init (TYPE_2__*) ;
 int stream_bucket_vtable ;
 int stream_reader ;

serf_bucket_t *
svn_ra_serf__create_stream_bucket(svn_stream_t *stream,
                                  serf_bucket_alloc_t *allocator,
                                  svn_ra_serf__stream_bucket_errfunc_t errfunc,
                                  void *errfunc_baton)
{
  stream_bucket_ctx_t *ctx;

  ctx = serf_bucket_mem_calloc(allocator, sizeof(*ctx));
  ctx->stream = stream;
  ctx->errfunc = errfunc;
  ctx->errfunc_baton = errfunc_baton;
  serf_databuf_init(&ctx->databuf);
  ctx->databuf.read = stream_reader;
  ctx->databuf.read_baton = ctx;

  return serf_bucket_create(&stream_bucket_vtable, allocator, ctx);
}
