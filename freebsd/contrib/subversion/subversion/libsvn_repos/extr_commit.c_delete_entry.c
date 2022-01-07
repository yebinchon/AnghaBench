
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_repos_authz_access_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct edit_baton {int txn_root; int base_path; } ;
struct dir_baton {char const* path; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int check_authz (struct edit_baton*,char const*,int ,int ,int *) ;
 int check_out_of_date (struct edit_baton*,char const*,scalar_t__,int ,int ) ;
 int out_of_date (char const*,scalar_t__) ;
 int svn_authz_recursive ;
 int svn_authz_write ;
 int * svn_error_trace (int ) ;
 int svn_fs_check_path (scalar_t__*,int ,char const*,int *) ;
 int svn_fs_delete (int ,char const*,int *) ;
 int svn_fs_node_created_rev (int *,int ,char const*,int *) ;
 char* svn_fspath__join (int ,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 int svn_relpath_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *parent = parent_baton;
  struct edit_baton *eb = parent->edit_baton;
  svn_node_kind_t kind;
  svn_repos_authz_access_t required = svn_authz_write;
  const char *full_path;

  full_path = svn_fspath__join(eb->base_path,
                               svn_relpath_canonicalize(path, pool), pool);


  SVN_ERR(svn_fs_check_path(&kind, eb->txn_root, full_path, pool));



  if (kind == svn_node_dir)
    required |= svn_authz_recursive;
  SVN_ERR(check_authz(eb, full_path, eb->txn_root,
                      required, pool));
  SVN_ERR(check_authz(eb, parent->path, eb->txn_root,
                      svn_authz_write, pool));


  if (kind == svn_node_none)
    return svn_error_trace(out_of_date(full_path, kind));



  if (SVN_IS_VALID_REVNUM(revision))
    {
      svn_revnum_t cr_rev;

      SVN_ERR(svn_fs_node_created_rev(&cr_rev, eb->txn_root, full_path, pool));
      SVN_ERR(check_out_of_date(eb, full_path, kind, revision, cr_rev));
    }




  return svn_error_trace(svn_fs_delete(eb->txn_root, full_path, pool));
}
