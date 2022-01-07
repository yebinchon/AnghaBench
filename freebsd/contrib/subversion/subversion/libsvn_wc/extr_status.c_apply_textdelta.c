
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_error_t ;
struct file_baton {int text_changed; } ;
typedef int apr_pool_t ;


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
  struct file_baton *fb = file_baton;


  fb->text_changed = TRUE;


  *handler_baton = ((void*)0);
  *handler = svn_delta_noop_window_handler;

  return SVN_NO_ERROR;
}
