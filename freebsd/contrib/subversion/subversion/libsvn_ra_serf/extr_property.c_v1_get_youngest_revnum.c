
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int blncache; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int retrieve_baseline_info (int *,char const**,TYPE_1__*,char const*,int ,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_ra_serf__blncache_get_baseline_info (char const**,int *,int ,char const*,int *) ;
 int svn_ra_serf__blncache_set (int ,char const*,int ,char const*,int *) ;
 int svn_ra_serf__fetch_dav_prop (char const**,TYPE_1__*,char const*,int ,char*,int *,int *) ;
 char* svn_urlpath__canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
v1_get_youngest_revnum(svn_revnum_t *youngest,
                       const char **basecoll_url,
                       svn_ra_serf__session_t *session,
                       const char *vcc_url,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  const char *baseline_url;
  const char *bc_url;



  SVN_ERR(svn_ra_serf__fetch_dav_prop(&baseline_url, session, vcc_url,
                                      SVN_INVALID_REVNUM,
                                      "checked-in",
                                      scratch_pool, scratch_pool));
  if (!baseline_url)
    {
      return svn_error_create(SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, ((void*)0),
                              _("The OPTIONS response did not include "
                                "the requested checked-in value"));
    }
  baseline_url = svn_urlpath__canonicalize(baseline_url, scratch_pool);






  SVN_ERR(svn_ra_serf__blncache_get_baseline_info(&bc_url,
                                                  youngest,
                                                  session->blncache,
                                                  baseline_url,
                                                  scratch_pool));
  if (!bc_url)
    {
      SVN_ERR(retrieve_baseline_info(youngest, &bc_url, session,
                                     baseline_url, SVN_INVALID_REVNUM,
                                     scratch_pool, scratch_pool));
      SVN_ERR(svn_ra_serf__blncache_set(session->blncache,
                                        baseline_url, *youngest,
                                        bc_url, scratch_pool));
    }

  if (basecoll_url != ((void*)0))
    *basecoll_url = apr_pstrdup(result_pool, bc_url);

  return SVN_NO_ERROR;
}
