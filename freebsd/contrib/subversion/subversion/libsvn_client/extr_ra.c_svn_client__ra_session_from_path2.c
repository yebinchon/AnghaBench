
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_4__ {int url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ENTRY_MISSING_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_client__open_ra_session_internal (int **,char const**,char const*,char const*,int *,int ,int ,int *,int *,int *) ;
 int svn_client__resolve_rev_and_url (TYPE_1__**,int *,char const*,int const*,int const*,int *,int *) ;
 int svn_client_url_from_path2 (char const**,char const*,int *,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_ra_reparent (int *,int ,int *) ;

svn_error_t *
svn_client__ra_session_from_path2(svn_ra_session_t **ra_session_p,
                                  svn_client__pathrev_t **resolved_loc_p,
                                  const char *path_or_url,
                                  const char *base_dir_abspath,
                                  const svn_opt_revision_t *peg_revision,
                                  const svn_opt_revision_t *revision,
                                  svn_client_ctx_t *ctx,
                                  apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  const char *initial_url;
  const char *corrected_url;
  svn_client__pathrev_t *resolved_loc;
  const char *wri_abspath;

  SVN_ERR(svn_client_url_from_path2(&initial_url, path_or_url, ctx, pool,
                                    pool));
  if (! initial_url)
    return svn_error_createf(SVN_ERR_ENTRY_MISSING_URL, ((void*)0),
                             _("'%s' has no URL"), path_or_url);

  if (base_dir_abspath)
    wri_abspath = base_dir_abspath;
  else if (!svn_path_is_url(path_or_url))
    SVN_ERR(svn_dirent_get_absolute(&wri_abspath, path_or_url, pool));
  else
    wri_abspath = ((void*)0);

  SVN_ERR(svn_client__open_ra_session_internal(&ra_session, &corrected_url,
                                               initial_url,
                                               wri_abspath,
                                               ((void*)0) ,
                                               base_dir_abspath != ((void*)0),
                                               base_dir_abspath != ((void*)0),
                                               ctx, pool, pool));



  if (corrected_url && svn_path_is_url(path_or_url))
    path_or_url = corrected_url;

  SVN_ERR(svn_client__resolve_rev_and_url(&resolved_loc, ra_session,
                                          path_or_url, peg_revision, revision,
                                          ctx, pool));


  SVN_ERR(svn_ra_reparent(ra_session, resolved_loc->url, pool));

  *ra_session_p = ra_session;
  if (resolved_loc_p)
    *resolved_loc_p = resolved_loc;

  return SVN_NO_ERROR;
}
