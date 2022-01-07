
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {char* copyfrom_path; } ;
typedef TYPE_1__ node_revision_t ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_node_revision (TYPE_1__**,int *) ;

svn_error_t *
svn_fs_fs__dag_get_copyfrom_path(const char **path,
                                 dag_node_t *node)
{
  node_revision_t *noderev;


  SVN_ERR(get_node_revision(&noderev, node));

  *path = noderev->copyfrom_path;

  return SVN_NO_ERROR;
}
