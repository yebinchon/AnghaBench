
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_error_t ;
struct node_baton {int wrapped_baton; scalar_t__ filtered; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* apply_textdelta ) (int ,char const*,int *,int *,void**) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,int *,int *,void**) ;
 int svn_delta_noop_window_handler ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton,
                const char *base_checksum,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct node_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;


  if (fb->filtered)
    {
      *handler = svn_delta_noop_window_handler;
      *handler_baton = ((void*)0);
    }
  else
    {
      SVN_ERR(eb->wrapped_editor->apply_textdelta(fb->wrapped_baton,
                                                  base_checksum, pool,
                                                  handler, handler_baton));
    }
  return SVN_NO_ERROR;
}
