
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_element__tree_t ;
typedef int svn_client_ctx_t ;
typedef int merge_target_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int verbose_notify (char*) ;

__attribute__((used)) static svn_error_t *
apply_merge_result_to_wc(merge_target_t *target,
                         svn_element__tree_t *merge_result,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *scratch_pool)
{
  verbose_notify("--- Writing merge result to WC");

  return SVN_NO_ERROR;
}
