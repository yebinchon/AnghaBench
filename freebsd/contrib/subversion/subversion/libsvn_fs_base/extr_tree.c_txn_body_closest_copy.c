
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct TYPE_29__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_30__ {char* txn; int rev; scalar_t__ is_txn_root; int * fs; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
struct TYPE_31__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
struct closest_copy_args {char* path; TYPE_2__** root_p; int pool; int ** path_p; TYPE_2__* root; } ;
struct TYPE_32__ {int * node; } ;
typedef TYPE_4__ parent_path_t ;
typedef int dag_node_t ;
struct TYPE_33__ {int dst_noderev_id; } ;
typedef TYPE_5__ copy_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_NOT_DIRECTORY ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 TYPE_3__* SVN_NO_ERROR ;
 int * apr_pstrdup (int ,char const*) ;
 int examine_copy_inheritance (char const**,TYPE_5__**,int *,TYPE_4__*,TYPE_1__*,int ) ;
 TYPE_3__* get_dag (int **,TYPE_2__*,char const*,TYPE_1__*,int ) ;
 TYPE_2__* make_revision_root (int *,scalar_t__,int *,int ) ;
 int open_path (TYPE_4__**,TYPE_2__*,char const*,int ,char const*,TYPE_1__*,int ) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 char* svn_fs_base__dag_get_created_path (int *) ;
 int * svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__dag_get_node (int **,int *,int ,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_predecessor_id (int const**,int *,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_revision (scalar_t__*,int *,TYPE_1__*,int ) ;
 scalar_t__ svn_fs_base__dag_node_kind (int *) ;
 int svn_fs_base__dag_revision_root (int **,int *,scalar_t__,TYPE_1__*,int ) ;
 int svn_fs_base__id_check_related (int const*,int *) ;
 int svn_fs_base__rev_get_txn_id (char const**,int *,int ,TYPE_1__*,int ) ;
 int svn_fs_bdb__get_copy (TYPE_5__**,int *,char const*,TYPE_1__*,int ) ;
 scalar_t__ svn_node_none ;

__attribute__((used)) static svn_error_t *
txn_body_closest_copy(void *baton, trail_t *trail)
{
  struct closest_copy_args *args = baton;
  svn_fs_root_t *root = args->root;
  const char *path = args->path;
  svn_fs_t *fs = root->fs;
  parent_path_t *parent_path;
  const svn_fs_id_t *node_id;
  const char *txn_id, *copy_id;
  copy_t *copy = ((void*)0);
  svn_fs_root_t *copy_dst_root;
  dag_node_t *path_node_in_copy_dst, *copy_dst_node, *copy_dst_root_node;
  const char *copy_dst_path;
  svn_revnum_t copy_dst_rev, created_rev;
  svn_error_t *err;

  *(args->path_p) = ((void*)0);
  *(args->root_p) = ((void*)0);


  if (root->is_txn_root)
    txn_id = root->txn;
  else
    SVN_ERR(svn_fs_base__rev_get_txn_id(&txn_id, fs, root->rev,
                                        trail, trail->pool));


  SVN_ERR(open_path(&parent_path, root, path, 0, txn_id,
                    trail, trail->pool));
  node_id = svn_fs_base__dag_get_id(parent_path->node);




  SVN_ERR(examine_copy_inheritance(&copy_id, &copy, fs, parent_path,
                                   trail, trail->pool));


  if (((copy_id)[0] == '0') && ((copy_id)[1] == '\0'))
    return SVN_NO_ERROR;


  if (! copy)
    SVN_ERR(svn_fs_bdb__get_copy(&copy, fs, copy_id, trail, trail->pool));


  SVN_ERR(svn_fs_base__dag_get_node(&copy_dst_node, fs, copy->dst_noderev_id,
                                    trail, trail->pool));
  copy_dst_path = svn_fs_base__dag_get_created_path(copy_dst_node);
  SVN_ERR(svn_fs_base__dag_get_revision(&copy_dst_rev, copy_dst_node,
                                        trail, trail->pool));


  SVN_ERR(svn_fs_base__dag_revision_root(&copy_dst_root_node, fs,
                                         copy_dst_rev, trail, args->pool));
  copy_dst_root = make_revision_root(fs, copy_dst_rev,
                                     copy_dst_root_node, args->pool);





  err = get_dag(&path_node_in_copy_dst, copy_dst_root, path,
                trail, trail->pool);
  if (err)
    {
      if ((err->apr_err == SVN_ERR_FS_NOT_FOUND)
          || (err->apr_err == SVN_ERR_FS_NOT_DIRECTORY))
        {
          svn_error_clear(err);
          return SVN_NO_ERROR;
        }
      return svn_error_trace(err);
    }
  if ((svn_fs_base__dag_node_kind(path_node_in_copy_dst) == svn_node_none)
      || (! (svn_fs_base__id_check_related
             (node_id, svn_fs_base__dag_get_id(path_node_in_copy_dst)))))
    {
      return SVN_NO_ERROR;
    }
  SVN_ERR(svn_fs_base__dag_get_revision(&created_rev, path_node_in_copy_dst,
                                        trail, trail->pool));
  if (created_rev == copy_dst_rev)
    {
      const svn_fs_id_t *pred_id;
      SVN_ERR(svn_fs_base__dag_get_predecessor_id(&pred_id,
                                                  path_node_in_copy_dst,
                                                  trail, trail->pool));
      if (! pred_id)
        return SVN_NO_ERROR;
    }

  *(args->path_p) = apr_pstrdup(args->pool, copy_dst_path);
  *(args->root_p) = copy_dst_root;

  return SVN_NO_ERROR;
}
