
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_error_t ;
struct file_baton {int wrapped_file_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int out; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* apply_textdelta ) (int ,char const*,int *,int *,void**) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,int *,int *,void**) ;
 int svn_stream_printf (int ,int *,char*,char const*) ;
 int write_indent (struct edit_baton*,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton,
                const char *base_checksum,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  SVN_ERR(write_indent(eb, pool));
  SVN_ERR(svn_stream_printf(eb->out, pool, "apply_textdelta : %s\n",
                            base_checksum));

  SVN_ERR(eb->wrapped_editor->apply_textdelta(fb->wrapped_file_baton,
                                              base_checksum,
                                              pool,
                                              handler,
                                              handler_baton));

  return SVN_NO_ERROR;
}
