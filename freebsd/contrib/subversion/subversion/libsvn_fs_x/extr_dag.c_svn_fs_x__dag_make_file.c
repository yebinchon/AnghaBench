
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * make_entry (int **,int *,char const*,char const*,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_x__dag_make_file(dag_node_t **child_p,
                        dag_node_t *parent,
                        const char *parent_path,
                        const char *name,
                        svn_fs_x__txn_id_t txn_id,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{

  return make_entry(child_p, parent, parent_path, name, FALSE, txn_id,
                    result_pool, scratch_pool);
}
