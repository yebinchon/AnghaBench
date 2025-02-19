
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_node_revision (TYPE_1__**,int *) ;

svn_error_t *
svn_fs_fs__dag_get_predecessor_id(const svn_fs_id_t **id_p,
                                  dag_node_t *node)
{
  node_revision_t *noderev;

  SVN_ERR(get_node_revision(&noderev, node));
  *id_p = noderev->predecessor_id;
  return SVN_NO_ERROR;
}
