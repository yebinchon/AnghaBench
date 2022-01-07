
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_info_receiver2_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int svn_client_info4 (char const*,int const*,int const*,int ,int ,int ,int ,int const*,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client_info3(const char *abspath_or_url,
                 const svn_opt_revision_t *peg_revision,
                 const svn_opt_revision_t *revision,
                 svn_depth_t depth,
                 svn_boolean_t fetch_excluded,
                 svn_boolean_t fetch_actual_only,
                 const apr_array_header_t *changelists,
                 svn_client_info_receiver2_t receiver,
                 void *receiver_baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  return svn_error_trace(
            svn_client_info4(abspath_or_url,
                             peg_revision,
                             revision,
                             depth,
                             fetch_excluded,
                             fetch_actual_only,
                             FALSE ,
                             changelists,
                             receiver, receiver_baton,
                             ctx, pool));
}
