
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_client__get_youngest_common_ancestor (int **,int *,int *,int *,int *,int *,int *) ;
 int * svn_client__pathrev_create_with_relpath (char const*,char const*,int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
find_yca(svn_client__pathrev_t **yca_loc,
         const char *repos_relpath1,
         svn_revnum_t peg_rev1,
         const char *repos_relpath2,
         svn_revnum_t peg_rev2,
         const char *repos_root_url,
         const char *repos_uuid,
         svn_ra_session_t *ra_session,
         svn_client_ctx_t *ctx,
         apr_pool_t *result_pool,
         apr_pool_t *scratch_pool)
{
  svn_client__pathrev_t *loc1;
  svn_client__pathrev_t *loc2;

  *yca_loc = ((void*)0);

  loc1 = svn_client__pathrev_create_with_relpath(repos_root_url, repos_uuid,
                                                 peg_rev1, repos_relpath1,
                                                 scratch_pool);
  loc2 = svn_client__pathrev_create_with_relpath(repos_root_url, repos_uuid,
                                                 peg_rev2, repos_relpath2,
                                                 scratch_pool);
  SVN_ERR(svn_client__get_youngest_common_ancestor(yca_loc, loc1, loc2,
                                                   ra_session, ctx,
                                                   result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
