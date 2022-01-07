
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {TYPE_1__* wrapped_editor; int out; } ;
struct dir_baton {int wrapped_dir_baton; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* delete_entry ) (char const*,int ,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * stub1 (char const*,int ,int ,int *) ;
 int svn_stream_printf (int ,int *,char*,char const*,int ) ;
 int write_indent (struct edit_baton*,int *) ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t base_revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;

  SVN_ERR(write_indent(eb, pool));
  SVN_ERR(svn_stream_printf(eb->out, pool, "delete_entry : %s:%ld\n",
                            path, base_revision));

  return eb->wrapped_editor->delete_entry(path,
                                          base_revision,
                                          pb->wrapped_dir_baton,
                                          pool);
}
