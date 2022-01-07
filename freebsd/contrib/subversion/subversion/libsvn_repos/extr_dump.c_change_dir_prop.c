
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct edit_baton {int dummy; } ;
struct dir_baton {scalar_t__ written_out; int cmp_rev; int cmp_path; int path; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int dump_node (struct edit_baton*,int ,int ,int ,int ,int ,int ,int *) ;
 int svn_node_action_change ;
 int svn_node_dir ;

__attribute__((used)) static svn_error_t *
change_dir_prop(void *parent_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton *db = parent_baton;
  struct edit_baton *eb = db->edit_baton;







  if (! db->written_out)
    {
      SVN_ERR(dump_node(eb, db->path,
                        svn_node_dir, svn_node_action_change,


                        FALSE, db->cmp_path, db->cmp_rev, pool));
      db->written_out = TRUE;
    }
  return SVN_NO_ERROR;
}
