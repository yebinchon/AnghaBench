
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_9__ {int * fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int * node; } ;
typedef TYPE_2__ parent_path_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int find_youngest_copyroot (scalar_t__*,char const**,int *,TYPE_2__*,int *) ;
 int open_path (TYPE_2__**,TYPE_1__*,char const*,int,int ,int *) ;
 int open_path_allow_null ;
 int open_path_node_only ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs_fs__dag_get_id (int *) ;
 int svn_fs_fs__dag_get_predecessor_id (int const**,int *) ;
 int svn_fs_fs__dag_get_revision (scalar_t__*,int *,int *) ;
 int svn_fs_fs__id_check_related (int ,int ) ;
 int svn_fs_fs__revision_root (TYPE_1__**,int *,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *fs_closest_copy(svn_fs_root_t **root_p,
                                    const char **path_p,
                                    svn_fs_root_t *root,
                                    const char *path,
                                    apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  parent_path_t *parent_path, *copy_dst_parent_path;
  svn_revnum_t copy_dst_rev, created_rev;
  const char *copy_dst_path;
  svn_fs_root_t *copy_dst_root;
  dag_node_t *copy_dst_node;


  *root_p = ((void*)0);
  *path_p = ((void*)0);

  path = svn_fs__canonicalize_abspath(path, pool);
  SVN_ERR(open_path(&parent_path, root, path, 0, FALSE, pool));




  SVN_ERR(find_youngest_copyroot(&copy_dst_rev, &copy_dst_path,
                                 fs, parent_path, pool));
  if (copy_dst_rev == 0)
    return SVN_NO_ERROR;




  SVN_ERR(svn_fs_fs__revision_root(&copy_dst_root, fs, copy_dst_rev, pool));
  SVN_ERR(open_path(&copy_dst_parent_path, copy_dst_root, path,
                    open_path_node_only | open_path_allow_null, FALSE, pool));
  if (copy_dst_parent_path == ((void*)0))
    return SVN_NO_ERROR;

  copy_dst_node = copy_dst_parent_path->node;
  if (! svn_fs_fs__id_check_related(svn_fs_fs__dag_get_id(copy_dst_node),
                                    svn_fs_fs__dag_get_id(parent_path->node)))
    return SVN_NO_ERROR;
  SVN_ERR(svn_fs_fs__dag_get_revision(&created_rev, copy_dst_node, pool));
  if (created_rev == copy_dst_rev)
    {
      const svn_fs_id_t *pred;
      SVN_ERR(svn_fs_fs__dag_get_predecessor_id(&pred, copy_dst_node));
      if (! pred)
        return SVN_NO_ERROR;
    }


  *root_p = copy_dst_root;
  *path_p = copy_dst_path;
  return SVN_NO_ERROR;
}
