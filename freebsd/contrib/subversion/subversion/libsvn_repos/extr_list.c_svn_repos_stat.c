
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_dirent_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int fill_dirent (TYPE_1__*,int *,char const*,int *) ;
 TYPE_1__* svn_dirent_create (int *) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 scalar_t__ svn_node_none ;

svn_error_t *
svn_repos_stat(svn_dirent_t **dirent,
               svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  svn_node_kind_t kind;
  svn_dirent_t *ent;

  SVN_ERR(svn_fs_check_path(&kind, root, path, pool));

  if (kind == svn_node_none)
    {
      *dirent = ((void*)0);
      return SVN_NO_ERROR;
    }

  ent = svn_dirent_create(pool);
  ent->kind = kind;

  SVN_ERR(fill_dirent(ent, root, path, pool));

  *dirent = ent;
  return SVN_NO_ERROR;
}
