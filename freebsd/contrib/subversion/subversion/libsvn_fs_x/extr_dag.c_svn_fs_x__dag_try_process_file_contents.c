
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_process_contents_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int node_revision; int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int * svn_fs_x__try_process_file_contents (int *,int ,int ,int ,void*,int *) ;

svn_error_t *
svn_fs_x__dag_try_process_file_contents(svn_boolean_t *success,
                                        dag_node_t *node,
                                        svn_fs_process_contents_func_t processor,
                                        void* baton,
                                        apr_pool_t *scratch_pool)
{
  return svn_fs_x__try_process_file_contents(success, node->fs,
                                             node->node_revision,
                                             processor, baton, scratch_pool);
}
