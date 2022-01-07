
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int merge_incoming_added_dir_replace (int *,int *,int *,int ,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
resolve_merge_incoming_added_dir_replace_and_merge(
  svn_client_conflict_option_t *option,
  svn_client_conflict_t *conflict,
  svn_client_ctx_t *ctx,
  apr_pool_t *scratch_pool)
{
  return svn_error_trace(merge_incoming_added_dir_replace(option,
                                                          conflict,
                                                          ctx,
                                                          TRUE,
                                                          scratch_pool));
}
