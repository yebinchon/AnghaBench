
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_branch__state_t ;
struct TYPE_4__ {int eid; int rev; int * branch; } ;
typedef TYPE_1__ svn_branch__el_rev_id_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

svn_branch__el_rev_id_t *
svn_branch__el_rev_id_create(svn_branch__state_t *branch,
                             int eid,
                             svn_revnum_t rev,
                             apr_pool_t *result_pool)
{
  svn_branch__el_rev_id_t *id = apr_palloc(result_pool, sizeof(*id));

  id->branch = branch;
  id->eid = eid;
  id->rev = rev;
  return id;
}
