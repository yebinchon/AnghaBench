
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_5__ {scalar_t__ rev; int url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_client__get_repos_mergeinfo_catalog (int *,int *,int ,scalar_t__,int ,int ,scalar_t__,int *,int *) ;
 int svn_client__get_wc_or_repos_mergeinfo_catalog (int *,int *,int *,scalar_t__,int ,scalar_t__,int ,int *,char const*,int *,int *,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_1__**,char const*,int *,int const*,int const*,int *,int *) ;
 int svn_client__resolve_rev_and_url (TYPE_1__**,int *,char const*,int const*,int const*,int *,int *) ;
 int svn_client__wc_node_get_origin (TYPE_1__**,char const*,int *,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_mergeinfo_inherited ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_mergeinfo(svn_mergeinfo_catalog_t *mergeinfo_catalog,
              const char **repos_root,
              const char *path_or_url,
              const svn_opt_revision_t *peg_revision,
              svn_boolean_t include_descendants,
              svn_boolean_t ignore_invalid_mergeinfo,
              svn_client_ctx_t *ctx,
              svn_ra_session_t *ra_session,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  svn_boolean_t use_url = svn_path_is_url(path_or_url);
  svn_client__pathrev_t *peg_loc;

  if (ra_session && svn_path_is_url(path_or_url))
    {
      SVN_ERR(svn_ra_reparent(ra_session, path_or_url, scratch_pool));
      SVN_ERR(svn_client__resolve_rev_and_url(&peg_loc, ra_session,
                                              path_or_url,
                                              peg_revision,
                                              peg_revision,
                                              ctx, scratch_pool));
    }
  else
    {
      SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &peg_loc,
                                                path_or_url, ((void*)0),
                                                peg_revision,
                                                peg_revision, ctx, scratch_pool));
    }



  if (!use_url)
    {
      svn_client__pathrev_t *origin;
      SVN_ERR(svn_dirent_get_absolute(&local_abspath, path_or_url,
                                      scratch_pool));

      SVN_ERR(svn_client__wc_node_get_origin(&origin, local_abspath, ctx,
                                             scratch_pool, scratch_pool));
      if (!origin
          || strcmp(origin->url, peg_loc->url) != 0
          || peg_loc->rev != origin->rev)
      {
        use_url = TRUE;
      }
    }

  SVN_ERR(svn_ra_get_repos_root2(ra_session, repos_root, result_pool));

  if (use_url)
    {
      SVN_ERR(svn_client__get_repos_mergeinfo_catalog(
        mergeinfo_catalog, ra_session, peg_loc->url, peg_loc->rev,
        svn_mergeinfo_inherited, FALSE, include_descendants,
        result_pool, scratch_pool));
    }
  else
    {
      SVN_ERR(svn_client__get_wc_or_repos_mergeinfo_catalog(
        mergeinfo_catalog, ((void*)0), ((void*)0), include_descendants, FALSE,
        ignore_invalid_mergeinfo, svn_mergeinfo_inherited,
        ra_session, path_or_url, ctx,
        result_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
