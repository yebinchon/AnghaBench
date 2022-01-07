
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int dag_node_t ;


 scalar_t__ strcmp (int ,char const*) ;
 int svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__id_txn_id (int ) ;

svn_boolean_t svn_fs_base__dag_check_mutable(dag_node_t *node,
                                             const char *txn_id)
{
  return (strcmp(svn_fs_base__id_txn_id(svn_fs_base__dag_get_id(node)),
                 txn_id) == 0);
}
