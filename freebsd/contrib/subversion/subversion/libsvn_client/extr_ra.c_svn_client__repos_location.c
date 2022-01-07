
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_5__ {int repos_uuid; int repos_root_url; int rev; int url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int * repos_locations (char const**,int *,int *,int ,int ,int ,int ,int ,int *,int *) ;
 int svn_client__ensure_ra_session_url (char const**,int *,int ,int *) ;
 TYPE_1__* svn_client__pathrev_create (int ,int ,int ,char const*,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int svn_ra_reparent (int *,char const*,int *) ;

svn_error_t *
svn_client__repos_location(svn_client__pathrev_t **op_loc_p,
                           svn_ra_session_t *ra_session,
                           const svn_client__pathrev_t *peg_loc,
                           svn_revnum_t op_revnum,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const char *old_session_url;
  const char *op_url;
  svn_error_t *err;

  SVN_ERR(svn_client__ensure_ra_session_url(&old_session_url, ra_session,
                                            peg_loc->url, scratch_pool));
  err = repos_locations(&op_url, ((void*)0), ra_session,
                        peg_loc->url, peg_loc->rev,
                        op_revnum, SVN_INVALID_REVNUM, SVN_INVALID_REVNUM,
                        result_pool, scratch_pool);
  SVN_ERR(svn_error_compose_create(
            err, svn_ra_reparent(ra_session, old_session_url, scratch_pool)));

  *op_loc_p = svn_client__pathrev_create(peg_loc->repos_root_url,
                                         peg_loc->repos_uuid,
                                         op_revnum, op_url, result_pool);
  return SVN_NO_ERROR;
}
