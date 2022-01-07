
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tview_len; } ;
typedef TYPE_1__ svn_txdelta_window_t ;
typedef int svn_error_t ;
struct file_rev_baton {int byte_count; } ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
delta_handler(svn_txdelta_window_t *window, void *baton)
{
  struct file_rev_baton *frb = baton;

  if (window != ((void*)0))
    frb->byte_count += window->tview_len;

  return SVN_NO_ERROR;
}
