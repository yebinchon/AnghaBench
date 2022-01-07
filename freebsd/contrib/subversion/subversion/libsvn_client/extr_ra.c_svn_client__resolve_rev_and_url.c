
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_client__pathrev_create_with_session (int **,int *,int ,char const*,int *) ;
 int svn_client__repos_locations (char const**,int *,int *,int *,int *,char const*,int *,int *,int *,int *,int *) ;
 int svn_opt_resolve_revisions (int *,int *,int ,int ,int *) ;
 int svn_path_is_url (char const*) ;

svn_error_t *
svn_client__resolve_rev_and_url(svn_client__pathrev_t **resolved_loc_p,
                                svn_ra_session_t *ra_session,
                                const char *path_or_url,
                                const svn_opt_revision_t *peg_revision,
                                const svn_opt_revision_t *revision,
                                svn_client_ctx_t *ctx,
                                apr_pool_t *pool)
{
  svn_opt_revision_t peg_rev = *peg_revision;
  svn_opt_revision_t start_rev = *revision;
  const char *url;
  svn_revnum_t rev;


  SVN_ERR(svn_opt_resolve_revisions(&peg_rev, &start_rev,
                                    svn_path_is_url(path_or_url),
                                    TRUE ,
                                    pool));



  SVN_ERR(svn_client__repos_locations(&url, &rev, ((void*)0), ((void*)0),
                                      ra_session, path_or_url, &peg_rev,
                                      &start_rev, ((void*)0), ctx, pool));

  SVN_ERR(svn_client__pathrev_create_with_session(resolved_loc_p,
                                                  ra_session, rev, url, pool));
  return SVN_NO_ERROR;
}
