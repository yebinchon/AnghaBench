
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_txdelta_window_t ;
struct TYPE_3__ {int baton; int * (* next_window ) (int **,int ,int *) ;} ;
typedef TYPE_1__ svn_txdelta_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * stub1 (int **,int ,int *) ;

svn_error_t *
svn_txdelta_next_window(svn_txdelta_window_t **window,
                        svn_txdelta_stream_t *stream,
                        apr_pool_t *pool)
{
  return stream->next_window(window, stream->baton, pool);
}
