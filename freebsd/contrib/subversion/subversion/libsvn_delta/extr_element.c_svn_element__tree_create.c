
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int root_eid; int e_map; } ;
typedef TYPE_1__ svn_element__tree_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int apr_hash_copy (int *,int *) ;
 int apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;

svn_element__tree_t *
svn_element__tree_create(apr_hash_t *e_map,
                         int root_eid,
                         apr_pool_t *result_pool)
{
  svn_element__tree_t *element_tree
    = apr_pcalloc(result_pool, sizeof(*element_tree));

  element_tree->e_map = e_map ? apr_hash_copy(result_pool, e_map)
                              : apr_hash_make(result_pool);
  element_tree->root_eid = root_eid;
  return element_tree;
}
