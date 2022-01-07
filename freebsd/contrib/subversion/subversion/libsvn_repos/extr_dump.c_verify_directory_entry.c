
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kind; } ;
typedef TYPE_2__ svn_fs_dirent_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct dir_baton {TYPE_1__* edit_baton; int path; } ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int fs_root; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,...) ;
 int svn_fs_is_dir (int *,int ,char*,int *) ;
 int svn_fs_is_file (int *,int ,char*,int *) ;


 char* svn_relpath_join (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
verify_directory_entry(void *baton, const void *key, apr_ssize_t klen,
                       void *val, apr_pool_t *pool)
{
  struct dir_baton *db = baton;
  svn_fs_dirent_t *dirent = (svn_fs_dirent_t *)val;
  char *path;
  svn_boolean_t right_kind;

  path = svn_relpath_join(db->path, (const char *)key, pool);







  switch (dirent->kind) {
  case 129:
    SVN_ERR(svn_fs_is_dir(&right_kind, db->edit_baton->fs_root, path, pool));
    if (!right_kind)
      return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                               _("Node '%s' is not a directory."),
                               path);

    break;
  case 128:
    SVN_ERR(svn_fs_is_file(&right_kind, db->edit_baton->fs_root, path, pool));
    if (!right_kind)
      return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                               _("Node '%s' is not a file."),
                               path);
    break;
  default:
    return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                             _("Unexpected node kind %d for '%s'"),
                             dirent->kind, path);
  }

  return SVN_NO_ERROR;
}
