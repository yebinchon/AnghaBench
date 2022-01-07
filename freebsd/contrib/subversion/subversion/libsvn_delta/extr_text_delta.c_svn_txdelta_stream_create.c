
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int md5_digest; int next_window; void* baton; } ;
typedef TYPE_1__ svn_txdelta_stream_t ;
typedef int svn_txdelta_next_window_fn_t ;
typedef int svn_txdelta_md5_digest_fn_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

svn_txdelta_stream_t *
svn_txdelta_stream_create(void *baton,
                          svn_txdelta_next_window_fn_t next_window,
                          svn_txdelta_md5_digest_fn_t md5_digest,
                          apr_pool_t *pool)
{
  svn_txdelta_stream_t *stream = apr_palloc(pool, sizeof(*stream));

  stream->baton = baton;
  stream->next_window = next_window;
  stream->md5_digest = md5_digest;

  return stream;
}
