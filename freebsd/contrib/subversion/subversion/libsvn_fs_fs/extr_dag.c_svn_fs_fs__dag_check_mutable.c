
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int dag_node_t ;


 int svn_fs_fs__dag_get_id (int const*) ;
 int svn_fs_fs__id_is_txn (int ) ;

svn_boolean_t svn_fs_fs__dag_check_mutable(const dag_node_t *node)
{
  return svn_fs_fs__id_is_txn(svn_fs_fs__dag_get_id(node));
}
