
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rev; int eid; int branch; } ;
typedef TYPE_1__ svn_branch__el_rev_id_t ;
typedef int apr_pool_t ;


 TYPE_1__* svn_branch__el_rev_id_create (int ,int ,int ,int *) ;

svn_branch__el_rev_id_t *
svn_branch__el_rev_id_dup(const svn_branch__el_rev_id_t *old_id,
                          apr_pool_t *result_pool)
{
  if (! old_id)
    return ((void*)0);

  return svn_branch__el_rev_id_create(old_id->branch,
                                      old_id->eid,
                                      old_id->rev,
                                      result_pool);
}
