
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_process_contents_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int node_revision_t ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int get_node_revision (int **,TYPE_1__*) ;
 int * svn_fs_fs__try_process_file_contents (int *,int ,int *,int ,void*,int *) ;

svn_error_t *
svn_fs_fs__dag_try_process_file_contents(svn_boolean_t *success,
                                         dag_node_t *node,
                                         svn_fs_process_contents_func_t processor,
                                         void* baton,
                                         apr_pool_t *pool)
{
  node_revision_t *noderev;


  SVN_ERR(get_node_revision(&noderev, node));

  return svn_fs_fs__try_process_file_contents(success, node->fs,
                                              noderev,
                                              processor, baton, pool);
}
