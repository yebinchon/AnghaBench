
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_error_t ;
struct file_baton {int wrapped_file_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int out; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* change_file_prop ) (int ,char const*,TYPE_2__ const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,TYPE_2__ const*,int *) ;
 int svn_stream_printf (int ,int *,char*,char const*,char*) ;
 int write_indent (struct edit_baton*,int *) ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  SVN_ERR(write_indent(eb, pool));
  SVN_ERR(svn_stream_printf(eb->out, pool, "change_file_prop : %s -> %s\n",
                            name, value ? value->data : "<deleted>"));

  SVN_ERR(eb->wrapped_editor->change_file_prop(fb->wrapped_file_baton,
                                               name,
                                               value,
                                               pool));

  return SVN_NO_ERROR;
}
