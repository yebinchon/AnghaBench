
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_element__tree_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
typedef int merge_target_t ;
typedef int element_matching_info_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int verbose_notify (char*) ;

__attribute__((used)) static svn_error_t *
assign_eids_to_trees(svn_element__tree_t **tree_left_p,
                     svn_element__tree_t **tree_right_p,
                     svn_element__tree_t **tree_target_p,
                     const svn_client__pathrev_t *src_left,
                     const svn_client__pathrev_t *src_right,
                     merge_target_t *target,
                     svn_ra_session_t *ra_session,
                     element_matching_info_t *element_matching_info,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  verbose_notify("--- Assigning EIDs to trees");


  return SVN_NO_ERROR;
}
