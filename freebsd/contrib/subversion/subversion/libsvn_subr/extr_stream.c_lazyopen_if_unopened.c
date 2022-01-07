
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * real_stream; int pool; int open_baton; int (* open_func ) (int **,int ,int ,int *) ;} ;
typedef TYPE_1__ lazyopen_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int **,int ,int ,int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
lazyopen_if_unopened(lazyopen_baton_t *b)
{
  if (b->real_stream == ((void*)0))
    {
      svn_stream_t *stream;
      apr_pool_t *scratch_pool = svn_pool_create(b->pool);

      SVN_ERR(b->open_func(&stream, b->open_baton,
                           b->pool, scratch_pool));

      svn_pool_destroy(scratch_pool);

      b->real_stream = stream;
    }

  return SVN_NO_ERROR;
}
