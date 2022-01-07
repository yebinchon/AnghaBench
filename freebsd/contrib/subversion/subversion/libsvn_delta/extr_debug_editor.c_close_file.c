
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct file_baton {int wrapped_file_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int out; int indent_level; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* close_file ) (int ,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,int *) ;
 int svn_stream_printf (int ,int *,char*,char const*) ;
 int write_indent (struct edit_baton*,int *) ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *text_checksum,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  eb->indent_level--;

  SVN_ERR(write_indent(eb, pool));
  SVN_ERR(svn_stream_printf(eb->out, pool, "close_file : %s\n",
                            text_checksum));

  SVN_ERR(eb->wrapped_editor->close_file(fb->wrapped_file_baton,
                                         text_checksum, pool));

  return SVN_NO_ERROR;
}
