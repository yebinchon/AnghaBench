
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_diff_file_options_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_blame_receiver_t ;
typedef int svn_client_blame_receiver2_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_client_blame4 (char const*,int const*,int const*,int const*,int const*,int ,int ,int ,void*,int *,int *) ;
 int wrap_blame_receiver (int *,void**,int ,void*,int *) ;

svn_error_t *
svn_client_blame3(const char *target,
                  const svn_opt_revision_t *peg_revision,
                  const svn_opt_revision_t *start,
                  const svn_opt_revision_t *end,
                  const svn_diff_file_options_t *diff_options,
                  svn_boolean_t ignore_mime_type,
                  svn_client_blame_receiver_t receiver,
                  void *receiver_baton,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  svn_client_blame_receiver2_t receiver2;
  void *receiver2_baton;

  wrap_blame_receiver(&receiver2, &receiver2_baton, receiver, receiver_baton,
                      pool);

  return svn_client_blame4(target, peg_revision, start, end, diff_options,
                           ignore_mime_type, FALSE, receiver2, receiver2_baton,
                           ctx, pool);
}
