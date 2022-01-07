
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_proplist_receiver_t ;
typedef int svn_proplist_receiver2_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int svn_client_proplist4 (char const*,int const*,int const*,int ,int const*,int ,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int wrap_proplist_receiver (int *,void**,int ,void*,int *) ;

svn_error_t *
svn_client_proplist3(const char *target,
                     const svn_opt_revision_t *peg_revision,
                     const svn_opt_revision_t *revision,
                     svn_depth_t depth,
                     const apr_array_header_t *changelists,
                     svn_proplist_receiver_t receiver,
                     void *receiver_baton,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *pool)
{

  svn_proplist_receiver2_t receiver2;
  void *receiver2_baton;

  wrap_proplist_receiver(&receiver2, &receiver2_baton, receiver, receiver_baton,
                         pool);

  return svn_error_trace(svn_client_proplist4(target, peg_revision, revision,
                                              depth, changelists, FALSE,
                                              receiver2, receiver2_baton,
                                              ctx, pool));
}
