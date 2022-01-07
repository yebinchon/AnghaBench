
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 char* SVN_DAV__VERSION_NAME ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_PROPS_NOT_FOUND ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_get (int *,char*,int) ;
 int baseline_props ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 int * svn_error_create (int ,int *,int ) ;
 char* svn_prop_get_value (int *,char*) ;
 int svn_ra_serf__fetch_node_props (int **,int *,char const*,scalar_t__,int ,int *,int *) ;
 char* svn_urlpath__canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
retrieve_baseline_info(svn_revnum_t *actual_revision,
                       const char **basecoll_url_p,
                       svn_ra_serf__session_t *session,
                       const char *baseline_url,
                       svn_revnum_t revision,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  apr_hash_t *dav_props;
  const char *basecoll_url;

  SVN_ERR(svn_ra_serf__fetch_node_props(&props, session,
                                        baseline_url, revision,
                                        baseline_props,
                                        scratch_pool, scratch_pool));
  dav_props = apr_hash_get(props, "DAV:", 4);


  basecoll_url = svn_prop_get_value(dav_props, "baseline-collection");
  if (!basecoll_url)
    {
      return svn_error_create(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, ((void*)0),
                              _("The PROPFIND response did not include "
                                "the requested baseline-collection value"));
    }
  *basecoll_url_p = svn_urlpath__canonicalize(basecoll_url, result_pool);

  if (actual_revision)
    {
      const char *version_name;

      version_name = svn_prop_get_value(dav_props, SVN_DAV__VERSION_NAME);
      if (version_name)
        {
          apr_int64_t rev;

          SVN_ERR(svn_cstring_atoi64(&rev, version_name));
          *actual_revision = (svn_revnum_t)rev;
        }

      if (!version_name || !SVN_IS_VALID_REVNUM(*actual_revision))
        return svn_error_create(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, ((void*)0),
                                _("The PROPFIND response did not include "
                                  "the requested version-name value"));
    }

  return SVN_NO_ERROR;
}
