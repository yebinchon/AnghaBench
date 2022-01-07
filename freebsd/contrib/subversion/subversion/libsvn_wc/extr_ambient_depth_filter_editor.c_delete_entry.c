
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct edit_baton {TYPE_1__* wrapped_editor; int db; int anchor_abspath; } ;
struct dir_baton {scalar_t__ ambient_depth; int wrapped_baton; scalar_t__ ambiently_excluded; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* delete_entry ) (char const*,int ,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int ambient_read_info (scalar_t__*,scalar_t__*,int *,int ,char const*,int *) ;
 int * stub1 (char const*,int ,int ,int *) ;
 scalar_t__ svn_depth_immediates ;
 char* svn_dirent_join (int ,char const*,int *) ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t base_revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;

  if (pb->ambiently_excluded)
    return SVN_NO_ERROR;

  if (pb->ambient_depth < svn_depth_immediates)
    {



      svn_node_kind_t kind;
      svn_wc__db_status_t status;
      const char *abspath;

      abspath = svn_dirent_join(eb->anchor_abspath, path, pool);

      SVN_ERR(ambient_read_info(&status, &kind, ((void*)0),
                                eb->db, abspath, pool));

      if (kind == svn_node_unknown
          || status == svn_wc__db_status_not_present
          || status == svn_wc__db_status_excluded
          || status == svn_wc__db_status_server_excluded)
        return SVN_NO_ERROR;
    }

  return eb->wrapped_editor->delete_entry(path, base_revision,
                                          pb->wrapped_baton, pool);
}
