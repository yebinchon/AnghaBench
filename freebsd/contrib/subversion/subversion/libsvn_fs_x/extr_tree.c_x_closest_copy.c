
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_9__ {int * node; } ;
typedef TYPE_1__ svn_fs_x__dag_path_t ;
typedef int svn_fs_t ;
struct TYPE_10__ {int * fs; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 int find_youngest_copyroot (scalar_t__*,char const**,int *,TYPE_1__*) ;
 int svn_fs_x__dag_get_predecessor_id (int *) ;
 scalar_t__ svn_fs_x__dag_get_revision (int *) ;
 int svn_fs_x__dag_path_allow_null ;
 int svn_fs_x__dag_related_node (int *,int *) ;
 int svn_fs_x__get_dag_path (TYPE_1__**,TYPE_2__*,char const*,int ,int ,int *,int *) ;
 int svn_fs_x__id_used (int ) ;
 int svn_fs_x__revision_root (TYPE_2__**,int *,scalar_t__,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
x_closest_copy(svn_fs_root_t **root_p,
               const char **path_p,
               svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  svn_fs_x__dag_path_t *dag_path, *copy_dst_dag_path;
  svn_revnum_t copy_dst_rev, created_rev;
  const char *copy_dst_path;
  svn_fs_root_t *copy_dst_root;
  dag_node_t *copy_dst_node;
  apr_pool_t *scratch_pool = svn_pool_create(pool);


  *root_p = ((void*)0);
  *path_p = ((void*)0);

  SVN_ERR(svn_fs_x__get_dag_path(&dag_path, root, path, 0, FALSE,
                                 scratch_pool, scratch_pool));




  SVN_ERR(find_youngest_copyroot(&copy_dst_rev, &copy_dst_path,
                                 fs, dag_path));
  if (copy_dst_rev == 0)
    {
      svn_pool_destroy(scratch_pool);
      return SVN_NO_ERROR;
    }




  SVN_ERR(svn_fs_x__revision_root(&copy_dst_root, fs, copy_dst_rev, pool));
  SVN_ERR(svn_fs_x__get_dag_path(&copy_dst_dag_path, copy_dst_root, path,
                                 svn_fs_x__dag_path_allow_null, FALSE,
                                 scratch_pool, scratch_pool));
  if (copy_dst_dag_path == ((void*)0))
    {
      svn_pool_destroy(scratch_pool);
      return SVN_NO_ERROR;
    }

  copy_dst_node = copy_dst_dag_path->node;
  if (!svn_fs_x__dag_related_node(copy_dst_node, dag_path->node))
    {
      svn_pool_destroy(scratch_pool);
      return SVN_NO_ERROR;
    }
  created_rev = svn_fs_x__dag_get_revision(copy_dst_node);
  if (created_rev == copy_dst_rev)
    if (!svn_fs_x__id_used(svn_fs_x__dag_get_predecessor_id(copy_dst_node)))
      {
        svn_pool_destroy(scratch_pool);
        return SVN_NO_ERROR;
      }


  *root_p = copy_dst_root;
  *path_p = apr_pstrdup(pool, copy_dst_path);

  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
