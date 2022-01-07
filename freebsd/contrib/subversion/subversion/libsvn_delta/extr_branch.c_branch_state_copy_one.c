
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_element__payload_t ;
typedef int svn_branch__state_t ;
typedef int svn_branch__rev_bid_eid_t ;
typedef int svn_branch__eid_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
branch_state_copy_one(svn_branch__state_t *branch,
                      const svn_branch__rev_bid_eid_t *src_el_rev,
                      svn_branch__eid_t eid,
                      svn_branch__eid_t new_parent_eid,
                      const char *new_name,
                      const svn_element__payload_t *new_payload,
                      apr_pool_t *scratch_pool)
{







  return SVN_NO_ERROR;
}
