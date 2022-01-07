
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bid; } ;
typedef TYPE_1__ svn_branch__rev_bid_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 int apr_pstrdup (int *,int ) ;

svn_branch__rev_bid_t *
svn_branch__rev_bid_dup(const svn_branch__rev_bid_t *old_id,
                        apr_pool_t *result_pool)
{
  svn_branch__rev_bid_t *id;

  if (! old_id)
    return ((void*)0);

  id = apr_pmemdup(result_pool, old_id, sizeof(*id));
  id->bid = apr_pstrdup(result_pool, old_id->bid);
  return id;
}
