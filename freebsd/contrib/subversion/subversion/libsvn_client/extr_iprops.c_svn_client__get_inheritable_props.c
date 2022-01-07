
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int * get_inheritable_props (int **,char const*,int ,int ,int *,int *,int *,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_ra_get_session_url (int *,char const**,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;

svn_error_t *
svn_client__get_inheritable_props(apr_hash_t **wcroot_iprops,
                                  const char *local_abspath,
                                  svn_revnum_t revision,
                                  svn_depth_t depth,
                                  svn_ra_session_t *ra_session,
                                  svn_client_ctx_t *ctx,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  const char *old_session_url;
  svn_error_t *err;

  *wcroot_iprops = ((void*)0);

  if (!SVN_IS_VALID_REVNUM(revision))
    return SVN_NO_ERROR;

  if (ra_session)
    SVN_ERR(svn_ra_get_session_url(ra_session, &old_session_url, scratch_pool));
  err = get_inheritable_props(wcroot_iprops, local_abspath, revision, depth,
                              ra_session, ctx, result_pool, scratch_pool);

  if (ra_session)
    {
      err = svn_error_compose_create(
                err,
                svn_ra_reparent(ra_session, old_session_url, scratch_pool));
    }
  return svn_error_trace(err);
}
