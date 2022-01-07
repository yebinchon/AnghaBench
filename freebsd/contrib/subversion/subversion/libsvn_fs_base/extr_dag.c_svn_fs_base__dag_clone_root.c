
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int predecessor_count; int predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_fs_base__create_successor (int const**,int *,int const*,TYPE_1__*,char const*,char const*,int *,int *) ;
 int * svn_fs_base__dag_get_node (int **,int *,int const*,int *,int *) ;
 int svn_fs_base__get_txn_ids (int const**,int const**,int *,char const*,int *,int *) ;
 int svn_fs_base__id_copy (int const*,int *) ;
 char* svn_fs_base__id_copy_id (int const*) ;
 scalar_t__ svn_fs_base__id_eq (int const*,int const*) ;
 int svn_fs_base__set_txn_root (int *,char const*,int const*,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int const*,int *,int *) ;

svn_error_t *
svn_fs_base__dag_clone_root(dag_node_t **root_p,
                            svn_fs_t *fs,
                            const char *txn_id,
                            trail_t *trail,
                            apr_pool_t *pool)
{
  const svn_fs_id_t *base_root_id, *root_id;
  node_revision_t *noderev;



  SVN_ERR(svn_fs_base__get_txn_ids(&root_id, &base_root_id, fs, txn_id,
                                   trail, pool));




  if (svn_fs_base__id_eq(root_id, base_root_id))
    {
      const char *base_copy_id = svn_fs_base__id_copy_id(base_root_id);




      SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, fs, base_root_id,
                                            trail, pool));






      noderev->predecessor_id = svn_fs_base__id_copy(base_root_id, pool);
      if (noderev->predecessor_count != -1)
        noderev->predecessor_count++;
      SVN_ERR(svn_fs_base__create_successor(&root_id, fs, base_root_id,
                                            noderev, base_copy_id,
                                            txn_id, trail, pool));





      SVN_ERR(svn_fs_base__set_txn_root(fs, txn_id, root_id, trail, pool));
    }







  return svn_fs_base__dag_get_node(root_p, fs, root_id, trail, pool);
}
