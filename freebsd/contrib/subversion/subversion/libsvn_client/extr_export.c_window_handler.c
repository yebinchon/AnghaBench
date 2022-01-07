
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct handler_baton {int pool; int tmppath; int apply_baton; int * (* apply_handler ) (int *,int ) ;} ;


 int TRUE ;
 int * stub1 (int *,int ) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_io_remove_file2 (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
window_handler(svn_txdelta_window_t *window, void *baton)
{
  struct handler_baton *hb = baton;
  svn_error_t *err;

  err = hb->apply_handler(window, hb->apply_baton);
  if (err)
    {

      err = svn_error_compose_create(
                    err,
                    svn_io_remove_file2(hb->tmppath, TRUE, hb->pool));
    }

  return svn_error_trace(err);
}
