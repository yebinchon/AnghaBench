
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 TYPE_2__* SVN_NO_ERROR ;
 TYPE_2__* get_dag (int **,int *,char const*,TYPE_1__*,int *) ;
 int * make_revision_root (int ,int ,int *,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_fs_base__dag_get_revision (int *,int *,TYPE_1__*,int *) ;
 int svn_fs_base__dag_revision_root (int **,int ,int ,TYPE_1__*,int *) ;
 int svn_fs_bdb__youngest_rev (int *,int ,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_base__get_path_created_rev(svn_revnum_t *rev,
                                  const char *path,
                                  trail_t *trail,
                                  apr_pool_t *pool)
{
  svn_revnum_t head_rev, created_rev;
  svn_fs_root_t *root;
  dag_node_t *root_dir, *path_node;
  svn_error_t *err;


  SVN_ERR(svn_fs_bdb__youngest_rev(&head_rev, trail->fs, trail, pool));


  SVN_ERR(svn_fs_base__dag_revision_root(&root_dir, trail->fs, head_rev,
                                         trail, pool));
  root = make_revision_root(trail->fs, head_rev, root_dir, pool);


  err = get_dag(&path_node, root, path, trail, pool);
  if (err && (err->apr_err == SVN_ERR_FS_NOT_FOUND))
    {
      svn_error_clear(err);
      *rev = SVN_INVALID_REVNUM;
      return SVN_NO_ERROR;
    }
  else if (err)
    return svn_error_trace(err);


  SVN_ERR(svn_fs_base__dag_get_revision(&created_rev, path_node,
                                        trail, pool));

  *rev = created_rev;
  return SVN_NO_ERROR;
}
