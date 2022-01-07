
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_BAD_REVISION ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_KEYWORDS ;
 int _ (char*) ;
 int check_prop_name (char const*,int const*) ;
 int propset_on_url (char const*,int const*,char const*,int ,int ,int const*,int ,void*,int *,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_path_is_url (char const*) ;

svn_error_t *
svn_client_propset_remote(const char *propname,
                          const svn_string_t *propval,
                          const char *url,
                          svn_boolean_t skip_checks,
                          svn_revnum_t base_revision_for_url,
                          const apr_hash_t *revprop_table,
                          svn_commit_callback2_t commit_callback,
                          void *commit_baton,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *scratch_pool)
{
  if (!svn_path_is_url(url))
    return svn_error_create(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                            _("Targets must be URLs"));

  SVN_ERR(check_prop_name(propname, propval));





  if (! SVN_IS_VALID_REVNUM(base_revision_for_url))
    return svn_error_create(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                            _("Setting property on non-local targets "
                              "needs a base revision"));
  if ((strcmp(propname, SVN_PROP_EOL_STYLE) == 0) ||
      (strcmp(propname, SVN_PROP_KEYWORDS) == 0))
    return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                             _("Setting property '%s' on non-local "
                               "targets is not supported"), propname);

  SVN_ERR(propset_on_url(propname, propval, url, skip_checks,
                         base_revision_for_url, revprop_table,
                         commit_callback, commit_baton, ctx, scratch_pool));

  return SVN_NO_ERROR;
}
