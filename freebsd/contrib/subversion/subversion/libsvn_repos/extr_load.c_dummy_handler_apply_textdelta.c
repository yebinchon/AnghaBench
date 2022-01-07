
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * svn_txdelta_window_handler_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
dummy_handler_apply_textdelta(svn_txdelta_window_handler_t *handler,
                              void **handler_baton,
                              void *node_baton)
{

  *handler = ((void*)0);
  *handler_baton = ((void*)0);
  return SVN_NO_ERROR;
}
