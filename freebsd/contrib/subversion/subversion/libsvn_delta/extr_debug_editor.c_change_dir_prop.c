
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_error_t ;
struct edit_baton {TYPE_1__* wrapped_editor; int out; } ;
struct dir_baton {int wrapped_dir_baton; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* change_dir_prop ) (int ,char const*,TYPE_2__ const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,TYPE_2__ const*,int *) ;
 int svn_stream_printf (int ,int *,char*,char const*,char*) ;
 int write_indent (struct edit_baton*,int *) ;

__attribute__((used)) static svn_error_t *
change_dir_prop(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  struct edit_baton *eb = db->edit_baton;

  SVN_ERR(write_indent(eb, pool));
  SVN_ERR(svn_stream_printf(eb->out, pool, "change_dir_prop : %s -> %s\n",
                            name, value ? value->data : "<deleted>"));

  SVN_ERR(eb->wrapped_editor->change_dir_prop(db->wrapped_dir_baton,
                                              name,
                                              value,
                                              pool));

  return SVN_NO_ERROR;
}
