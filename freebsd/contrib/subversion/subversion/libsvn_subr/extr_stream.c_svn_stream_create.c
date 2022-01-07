
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* baton; } ;
typedef TYPE_1__ svn_stream_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;

svn_stream_t *
svn_stream_create(void *baton, apr_pool_t *pool)
{
  svn_stream_t *stream;

  stream = apr_pcalloc(pool, sizeof(*stream));
  stream->baton = baton;
  return stream;
}
