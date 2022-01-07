
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;

svn_error_t *svn_delta_noop_window_handler(svn_txdelta_window_t *window,
                                           void *baton)
{
  return SVN_NO_ERROR;
}
