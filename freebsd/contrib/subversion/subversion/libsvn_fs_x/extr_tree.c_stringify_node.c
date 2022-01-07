
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {char const* data; } ;


 int svn_fs_x__dag_get_id (int *) ;
 TYPE_1__* svn_fs_x__id_unparse (int ,int *) ;

__attribute__((used)) static const char *
stringify_node(dag_node_t *node,
               apr_pool_t *result_pool)
{

  return svn_fs_x__id_unparse(svn_fs_x__dag_get_id(node), result_pool)->data;
}
