
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_pathrev_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int branch_id; } ;
struct TYPE_4__ {TYPE_2__ branch_ref; } ;
typedef TYPE_1__ svn_element__payload_t ;
typedef int svn_branch__repos_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int storage_pathrev_from_branch_ref (int *,TYPE_2__,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
payload_get_storage_pathrev(svn_pathrev_t *storage_pathrev_p,
                            svn_element__payload_t *payload,
                            svn_branch__repos_t *repos,
                            apr_pool_t *result_pool)
{
  SVN_ERR_ASSERT(payload->branch_ref.branch_id );

  SVN_ERR(storage_pathrev_from_branch_ref(storage_pathrev_p,
                                          payload->branch_ref, repos,
                                          result_pool, result_pool));
  return SVN_NO_ERROR;
}
