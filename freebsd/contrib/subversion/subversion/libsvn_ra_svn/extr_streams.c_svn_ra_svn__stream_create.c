
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_4__ {int timeout_fn; void* timeout_baton; int * out_stream; int * in_stream; } ;
typedef TYPE_1__ svn_ra_svn__stream_t ;
typedef int ra_svn_timeout_fn_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

svn_ra_svn__stream_t *
svn_ra_svn__stream_create(svn_stream_t *in_stream,
                          svn_stream_t *out_stream,
                          void *timeout_baton,
                          ra_svn_timeout_fn_t timeout_cb,
                          apr_pool_t *pool)
{
  svn_ra_svn__stream_t *s = apr_palloc(pool, sizeof(*s));
  s->in_stream = in_stream;
  s->out_stream = out_stream;
  s->timeout_baton = timeout_baton;
  s->timeout_fn = timeout_cb;
  return s;
}
