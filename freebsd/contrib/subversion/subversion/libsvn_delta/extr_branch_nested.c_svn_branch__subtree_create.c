
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int subbranches; int tree; } ;
typedef TYPE_1__ svn_branch__subtree_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_element__tree_create (int *,int,int *) ;

svn_branch__subtree_t *
svn_branch__subtree_create(apr_hash_t *e_map,
                           int root_eid,
                           apr_pool_t *result_pool)
{
  svn_branch__subtree_t *subtree = apr_pcalloc(result_pool, sizeof(*subtree));

  subtree->tree = svn_element__tree_create(e_map, root_eid, result_pool);
  subtree->subbranches = apr_hash_make(result_pool);
  return subtree;
}
