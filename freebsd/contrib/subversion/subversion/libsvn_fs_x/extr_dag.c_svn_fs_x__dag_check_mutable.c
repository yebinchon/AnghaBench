
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_boolean_t ;
typedef int dag_node_t ;
struct TYPE_2__ {int change_set; } ;


 TYPE_1__* svn_fs_x__dag_get_id (int const*) ;
 int svn_fs_x__is_txn (int ) ;

svn_boolean_t
svn_fs_x__dag_check_mutable(const dag_node_t *node)
{
  return svn_fs_x__is_txn(svn_fs_x__dag_get_id(node)->change_set);
}
