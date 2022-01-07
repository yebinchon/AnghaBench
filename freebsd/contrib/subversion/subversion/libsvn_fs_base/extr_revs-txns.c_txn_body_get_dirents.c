
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct get_dirents_args {int ** dirents; int txn_id; int id; } ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__dag_check_mutable (int *,int ) ;
 int * svn_fs_base__dag_dir_entries (int **,int *,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_node (int **,int ,int ,TYPE_1__*,int ) ;
 scalar_t__ svn_fs_base__dag_node_kind (int *) ;
 scalar_t__ svn_node_dir ;

__attribute__((used)) static svn_error_t *
txn_body_get_dirents(void *baton, trail_t *trail)
{
  struct get_dirents_args *args = baton;
  dag_node_t *node;


  SVN_ERR(svn_fs_base__dag_get_node(&node, trail->fs, args->id,
                                    trail, trail->pool));


  if (! svn_fs_base__dag_check_mutable(node, args->txn_id))
    return SVN_NO_ERROR;


  *(args->dirents) = ((void*)0);
  if (svn_fs_base__dag_node_kind(node) != svn_node_dir)
    return SVN_NO_ERROR;


  return svn_fs_base__dag_dir_entries(args->dirents, node,
                                      trail, trail->pool);
}
