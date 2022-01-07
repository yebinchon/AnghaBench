
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * make_entry (int **,int *,char const*,char const*,int ,char const*,int *,int *) ;

svn_error_t *
svn_fs_base__dag_make_file(dag_node_t **child_p,
                           dag_node_t *parent,
                           const char *parent_path,
                           const char *name,
                           const char *txn_id,
                           trail_t *trail,
                           apr_pool_t *pool)
{

  return make_entry(child_p, parent, parent_path, name, FALSE,
                    txn_id, trail, pool);
}
