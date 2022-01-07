
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int txn_root; } ;
struct dir_baton {int path; scalar_t__ checked_write; int base_rev; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 scalar_t__ TRUE ;
 int check_authz (struct edit_baton*,int ,int ,int ,int *) ;
 int check_out_of_date (struct edit_baton*,int ,int ,int ,int ) ;
 int svn_authz_write ;
 int svn_fs_node_created_rev (int *,int ,int ,int *) ;
 int svn_node_dir ;
 int * svn_repos_fs_change_node_prop (int ,int ,char const*,int const*,int *) ;

__attribute__((used)) static svn_error_t *
change_dir_prop(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  struct edit_baton *eb = db->edit_baton;


  if (!db->checked_write)
    {
      SVN_ERR(check_authz(eb, db->path, eb->txn_root,
                          svn_authz_write, pool));

      if (SVN_IS_VALID_REVNUM(db->base_rev))
        {


          svn_revnum_t created_rev;
          SVN_ERR(svn_fs_node_created_rev(&created_rev,
                                          eb->txn_root, db->path, pool));

          SVN_ERR(check_out_of_date(eb, db->path, svn_node_dir,
                                    db->base_rev, created_rev));
        }

      db->checked_write = TRUE;
    }

  return svn_repos_fs_change_node_prop(eb->txn_root, db->path,
                                       name, value, pool);
}
