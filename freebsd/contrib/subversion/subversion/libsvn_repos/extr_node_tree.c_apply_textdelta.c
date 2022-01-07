
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_error_t ;
struct node_baton {TYPE_1__* node; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int text_mod; } ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_delta_noop_window_handler ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton,
                const char *base_checksum,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct node_baton *fb = file_baton;
  fb->node->text_mod = TRUE;
  *handler = svn_delta_noop_window_handler;
  *handler_baton = ((void*)0);
  return SVN_NO_ERROR;
}
