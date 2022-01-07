
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct edit_baton {int txn_root; int base_path; } ;
struct dir_baton {int was_copied; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 void* make_dir_baton (struct edit_baton*,struct dir_baton*,char const*,int ,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_check_path (scalar_t__*,int ,char const*,int *) ;
 char* svn_fspath__join (int ,int ,int *) ;
 scalar_t__ svn_node_none ;
 int svn_relpath_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
open_directory(const char *path,
               void *parent_baton,
               svn_revnum_t base_revision,
               apr_pool_t *pool,
               void **child_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  svn_node_kind_t kind;
  const char *full_path;

  full_path = svn_fspath__join(eb->base_path,
                               svn_relpath_canonicalize(path, pool), pool);



  SVN_ERR(svn_fs_check_path(&kind, eb->txn_root, full_path, pool));
  if (kind == svn_node_none)
    return svn_error_createf(SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
                             _("Path '%s' not present"),
                             path);


  *child_baton = make_dir_baton(eb, pb, full_path, pb->was_copied,
                                base_revision, pool);
  return SVN_NO_ERROR;
}
