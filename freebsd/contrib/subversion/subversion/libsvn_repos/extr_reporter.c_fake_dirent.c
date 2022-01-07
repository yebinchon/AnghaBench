
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
struct TYPE_4__ {scalar_t__ kind; int id; int name; } ;
typedef TYPE_1__ svn_fs_dirent_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_node_id (int *,int *,char const*,int *) ;
 int svn_fspath__basename (char const*,int *) ;
 scalar_t__ svn_node_none ;
 int svn_relpath_basename (char const*,int *) ;

__attribute__((used)) static svn_error_t *
fake_dirent(const svn_fs_dirent_t **entry, svn_fs_root_t *root,
            const char *path, apr_pool_t *pool)
{
  svn_node_kind_t kind;
  svn_fs_dirent_t *ent;

  SVN_ERR(svn_fs_check_path(&kind, root, path, pool));
  if (kind == svn_node_none)
    *entry = ((void*)0);
  else
    {
      ent = apr_palloc(pool, sizeof(**entry));


      ent->name = (*path == '/') ? svn_fspath__basename(path, pool)
                                 : svn_relpath_basename(path, pool);
      SVN_ERR(svn_fs_node_id(&ent->id, root, path, pool));
      ent->kind = kind;
      *entry = ent;
    }
  return SVN_NO_ERROR;
}
