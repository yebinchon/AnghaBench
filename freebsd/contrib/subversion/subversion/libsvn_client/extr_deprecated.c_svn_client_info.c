
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_info_receiver_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_EMPTY (int ) ;
 int * svn_client_info2 (char const*,int const*,int const*,int ,void*,int ,int *,int *,int *) ;

svn_error_t *
svn_client_info(const char *path_or_url,
                const svn_opt_revision_t *peg_revision,
                const svn_opt_revision_t *revision,
                svn_info_receiver_t receiver,
                void *receiver_baton,
                svn_boolean_t recurse,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{
  return svn_client_info2(path_or_url, peg_revision, revision,
                          receiver, receiver_baton,
                          SVN_DEPTH_INFINITY_OR_EMPTY(recurse),
                          ((void*)0), ctx, pool);
}
