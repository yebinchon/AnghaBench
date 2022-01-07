
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct delta_baton {int wrapped_baton; int (* wrapped_handler ) (int *,int ) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int *,int ) ;
 int update_blame (void*) ;

__attribute__((used)) static svn_error_t *
window_handler(svn_txdelta_window_t *window, void *baton)
{
  struct delta_baton *dbaton = baton;


  if (dbaton->wrapped_handler)
    SVN_ERR(dbaton->wrapped_handler(window, dbaton->wrapped_baton));


  if (window)
    return SVN_NO_ERROR;


  SVN_ERR(update_blame(baton));

  return SVN_NO_ERROR;
}
