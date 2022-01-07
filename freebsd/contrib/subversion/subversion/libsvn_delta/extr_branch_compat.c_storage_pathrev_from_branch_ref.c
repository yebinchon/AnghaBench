
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int relpath; int rev; } ;
typedef TYPE_1__ svn_pathrev_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int eid; int branch_id; int rev; } ;
typedef TYPE_2__ svn_element__branch_ref_t ;
typedef int svn_branch__repos_t ;
struct TYPE_9__ {int eid; int branch; int rev; } ;
typedef TYPE_3__ svn_branch__el_rev_id_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int branch_get_storage_rrpath_by_eid (int ,int ,int *) ;
 int svn_branch__repos_find_el_rev_by_id (TYPE_3__**,int *,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
storage_pathrev_from_branch_ref(svn_pathrev_t *storage_pathrev_p,
                                svn_element__branch_ref_t branch_ref,
                                svn_branch__repos_t *repos,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_branch__el_rev_id_t *el_rev;

  SVN_ERR(svn_branch__repos_find_el_rev_by_id(&el_rev,
                                              repos,
                                              branch_ref.rev,
                                              branch_ref.branch_id,
                                              branch_ref.eid,
                                              scratch_pool, scratch_pool));

  storage_pathrev_p->rev = el_rev->rev;
  storage_pathrev_p->relpath
    = branch_get_storage_rrpath_by_eid(el_rev->branch, el_rev->eid,
                                       result_pool);

  return SVN_NO_ERROR;
}
