
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {int eid; int rev; int bid; } ;
typedef TYPE_1__ svn_branch__rev_bid_eid_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;

svn_branch__rev_bid_eid_t *
svn_branch__rev_bid_eid_create(svn_revnum_t rev,
                               const char *branch_id,
                               int eid,
                               apr_pool_t *result_pool)
{
  svn_branch__rev_bid_eid_t *id = apr_palloc(result_pool, sizeof(*id));

  id->bid = apr_pstrdup(result_pool, branch_id);
  id->eid = eid;
  id->rev = rev;
  return id;
}
