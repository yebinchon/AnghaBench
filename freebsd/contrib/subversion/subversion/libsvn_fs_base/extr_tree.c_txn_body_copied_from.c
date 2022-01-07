
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct copied_from_args {int result_rev; int * result_path; int path; TYPE_8__* root; } ;
typedef int dag_node_t ;
struct TYPE_11__ {scalar_t__ kind; int src_txn_id; int * src_path; int dst_noderev_id; } ;
typedef TYPE_2__ copy_t ;
struct TYPE_12__ {int * fs; } ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ copy_kind_real ;
 int get_dag (int **,TYPE_8__*,int ,TYPE_1__*,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int * svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__dag_get_predecessor_id (int const**,int *,TYPE_1__*,int ) ;
 int svn_fs_base__id_copy_id (int const*) ;
 scalar_t__ svn_fs_base__id_eq (int ,int const*) ;
 int svn_fs_base__txn_get_revision (int *,int *,int ,TYPE_1__*,int ) ;
 int svn_fs_bdb__get_copy (TYPE_2__**,int *,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_copied_from(void *baton, trail_t *trail)
{
  struct copied_from_args *args = baton;
  const svn_fs_id_t *node_id, *pred_id;
  dag_node_t *node;
  svn_fs_t *fs = args->root->fs;


  args->result_path = ((void*)0);
  args->result_rev = SVN_INVALID_REVNUM;


  SVN_ERR(get_dag(&node, args->root, args->path, trail, trail->pool));
  node_id = svn_fs_base__dag_get_id(node);



  SVN_ERR(svn_fs_base__dag_get_predecessor_id(&pred_id, node,
                                              trail, trail->pool));
  if (! pred_id)
    return SVN_NO_ERROR;


  if (strcmp(svn_fs_base__id_copy_id(node_id),
             svn_fs_base__id_copy_id(pred_id)) != 0)
    {



      copy_t *copy;
      SVN_ERR(svn_fs_bdb__get_copy(&copy, fs,
                                   svn_fs_base__id_copy_id(node_id),
                                   trail, trail->pool));
      if ((copy->kind == copy_kind_real)
          && svn_fs_base__id_eq(copy->dst_noderev_id, node_id))
        {
          args->result_path = copy->src_path;
          SVN_ERR(svn_fs_base__txn_get_revision(&(args->result_rev), fs,
                                                copy->src_txn_id,
                                                trail, trail->pool));
        }
    }
  return SVN_NO_ERROR;
}
