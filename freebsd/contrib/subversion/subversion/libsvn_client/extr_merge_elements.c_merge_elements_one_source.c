
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_element__tree_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int merge_target_t ;
typedef int element_matching_info_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int apply_merge_result_to_wc (int *,int *,int *,int *) ;
 int assign_eids_to_trees (int **,int **,int **,int const*,int const*,int *,int *,int *,int *,int *,int *) ;
 int element_matching_info_str (int *,int *) ;
 int merge_trees (int **,void**,int *,int *,int *,int *,int *) ;
 int pathrev_str (int const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int verbose_notify (char*,...) ;

__attribute__((used)) static svn_error_t *
merge_elements_one_source(svn_boolean_t *use_sleep,
                          const svn_client__pathrev_t *src_left,
                          const svn_client__pathrev_t *src_right,
                          merge_target_t *target,
                          svn_ra_session_t *ra_session,
                          element_matching_info_t *element_matching_info,
                          svn_boolean_t diff_ignore_ancestry,
                          svn_boolean_t force_delete,
                          svn_boolean_t dry_run,
                          const apr_array_header_t *merge_options,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *scratch_pool)
{
  svn_element__tree_t *tree_left, *tree_right, *tree_target;
  svn_element__tree_t *merge_result;
  void *conflicts;

  verbose_notify("--- Merging by elements: "
                 "left=%s, right=%s, matching=%s",
                 pathrev_str(src_left, scratch_pool),
                 pathrev_str(src_right, scratch_pool),
                 element_matching_info_str(element_matching_info,
                                           scratch_pool));



  SVN_ERR(assign_eids_to_trees(&tree_left, &tree_right, &tree_target,
                               src_left, src_right, target, ra_session,
                               element_matching_info,
                               ctx, scratch_pool, scratch_pool));


  SVN_ERR(merge_trees(&merge_result, &conflicts,
                      tree_left, tree_right, tree_target,
                      scratch_pool, scratch_pool));


  if (conflicts)
    {
      return svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                              _("Merge had conflicts; "
                                "this is not yet supported"));
    }


  if (dry_run)
    {
      verbose_notify("--- Dry run; not writing merge result to WC");
    }
  else
    {
      SVN_ERR(apply_merge_result_to_wc(target, merge_result,
                                       ctx, scratch_pool));
      *use_sleep = TRUE;
    }


  return SVN_NO_ERROR;
}
