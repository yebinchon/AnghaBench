
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_PROPS_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_get (int *,char*,int) ;
 char* apr_pstrdup (int *,int ) ;
 int checked_in_props ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_prop_get_value (int *,char const*) ;
 int svn_ra_serf__fetch_node_props (int **,int *,char const*,int ,int ,int *,int *) ;

svn_error_t *
svn_ra_serf__fetch_dav_prop(const char **value,
                            svn_ra_serf__session_t *session,
                            const char *url,
                            svn_revnum_t revision,
                            const char *propname,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  apr_hash_t *dav_props;

  SVN_ERR(svn_ra_serf__fetch_node_props(&props, session, url, revision,
                                        checked_in_props,
                                        scratch_pool, scratch_pool));
  dav_props = apr_hash_get(props, "DAV:", 4);
  if (dav_props == ((void*)0))
    return svn_error_create(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, ((void*)0),
                            _("The PROPFIND response did not include "
                              "the requested 'DAV:' properties"));





  *value = apr_pstrdup(result_pool, svn_prop_get_value(dav_props, propname));

  return SVN_NO_ERROR;
}
