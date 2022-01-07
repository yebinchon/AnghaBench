
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct handler_baton {int pool; int source; int apply_baton; int * (* apply_handler ) (int *,int ) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * stub1 (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_pool_destroy (int ) ;
 int svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
window_handler(svn_txdelta_window_t *window, void *baton)
{
  struct handler_baton *hb = baton;
  svn_error_t *err;

  err = hb->apply_handler(window, hb->apply_baton);
  if (window != ((void*)0) && !err)
    return SVN_NO_ERROR;

  SVN_ERR(svn_stream_close(hb->source));

  svn_pool_destroy(hb->pool);

  return svn_error_trace(err);
}
