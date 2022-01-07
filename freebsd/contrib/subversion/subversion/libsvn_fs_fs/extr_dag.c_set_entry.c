
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int get_node_revision (int **,TYPE_1__*) ;
 int * svn_fs_fs__set_entry (int ,int const*,int *,char const*,int const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
set_entry(dag_node_t *parent,
          const char *name,
          const svn_fs_id_t *id,
          svn_node_kind_t kind,
          const svn_fs_fs__id_part_t *txn_id,
          apr_pool_t *pool)
{
  node_revision_t *parent_noderev;


  SVN_ERR(get_node_revision(&parent_noderev, parent));


  return svn_fs_fs__set_entry(parent->fs, txn_id, parent_noderev, name, id,
                              kind, pool);
}
