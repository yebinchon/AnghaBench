
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_blame_receiver_t ;
typedef int apr_pool_t ;


 int * svn_client_blame2 (char const*,int const*,int const*,int const*,int ,void*,int *,int *) ;
 int wrap_pre_blame3_receiver (int *,void**,int *) ;

svn_error_t *
svn_client_blame(const char *target,
                 const svn_opt_revision_t *start,
                 const svn_opt_revision_t *end,
                 svn_client_blame_receiver_t receiver,
                 void *receiver_baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  wrap_pre_blame3_receiver(&receiver, &receiver_baton, pool);
  return svn_client_blame2(target, end, start, end,
                           receiver, receiver_baton, ctx, pool);
}
