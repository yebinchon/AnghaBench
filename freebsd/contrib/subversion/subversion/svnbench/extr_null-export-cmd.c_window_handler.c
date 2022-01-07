
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tview_len; } ;
typedef TYPE_1__ svn_txdelta_window_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int byte_count; } ;
typedef TYPE_2__ edit_baton_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
window_handler(svn_txdelta_window_t *window, void *baton)
{
  edit_baton_t *eb = baton;
  if (window != ((void*)0))
    eb->byte_count += window->tview_len;

  return SVN_NO_ERROR;
}
