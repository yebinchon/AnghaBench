
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct file_baton {int path; scalar_t__ checked_write; struct edit_baton* edit_baton; } ;
struct edit_baton {int txn_root; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ TRUE ;
 int check_authz (struct edit_baton*,int ,int ,int ,int *) ;
 int svn_authz_write ;
 int * svn_repos_fs_change_node_prop (int ,int ,char const*,int const*,int *) ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  if (!fb->checked_write)
    {

      SVN_ERR(check_authz(eb, fb->path, eb->txn_root,
                          svn_authz_write, pool));
      fb->checked_write = TRUE;
    }

  return svn_repos_fs_change_node_prop(eb->txn_root, fb->path,
                                       name, value, pool);
}
