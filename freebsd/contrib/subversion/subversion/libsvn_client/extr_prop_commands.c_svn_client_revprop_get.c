
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_client__get_revision_number (int *,int *,int ,int *,int *,int const*,int *) ;
 int svn_client_open_ra_session2 (int **,char const*,int *,TYPE_1__*,int *,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_rev_prop (int *,int ,char const*,int **,int *) ;

svn_error_t *
svn_client_revprop_get(const char *propname,
                       svn_string_t **propval,
                       const char *URL,
                       const svn_opt_revision_t *revision,
                       svn_revnum_t *set_rev,
                       svn_client_ctx_t *ctx,
                       apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  apr_pool_t *subpool = svn_pool_create(pool);
  svn_error_t *err;



  SVN_ERR(svn_client_open_ra_session2(&ra_session, URL, ((void*)0),
                                      ctx, subpool, subpool));



  SVN_ERR(svn_client__get_revision_number(set_rev, ((void*)0), ctx->wc_ctx, ((void*)0),
                                          ra_session, revision, subpool));


  err = svn_ra_rev_prop(ra_session, *set_rev, propname, propval, pool);


  svn_pool_destroy(subpool);
  return svn_error_trace(err);
}
