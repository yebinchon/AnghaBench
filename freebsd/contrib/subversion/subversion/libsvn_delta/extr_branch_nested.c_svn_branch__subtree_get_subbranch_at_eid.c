
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int subbranches; } ;
typedef TYPE_1__ svn_branch__subtree_t ;
typedef int apr_pool_t ;


 TYPE_1__* svn_eid__hash_get (int ,int) ;

svn_branch__subtree_t *
svn_branch__subtree_get_subbranch_at_eid(svn_branch__subtree_t *subtree,
                                         int eid,
                                         apr_pool_t *result_pool)
{
  subtree = svn_eid__hash_get(subtree->subbranches, eid);

  return subtree;
}
