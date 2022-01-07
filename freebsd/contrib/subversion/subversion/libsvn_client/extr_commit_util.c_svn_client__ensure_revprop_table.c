
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_CLIENT_PROPERTY_NAME ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_LOG ;
 int _ (char*) ;
 int * apr_hash_copy (int *,int const*) ;
 int * apr_hash_make (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_hash_sets (int *,int ,int ) ;
 scalar_t__ svn_prop_has_svn_prop (int const*,int *) ;
 int svn_string_create (char const*,int *) ;

svn_error_t *
svn_client__ensure_revprop_table(apr_hash_t **revprop_table_out,
                                 const apr_hash_t *revprop_table_in,
                                 const char *log_msg,
                                 svn_client_ctx_t *ctx,
                                 apr_pool_t *pool)
{
  apr_hash_t *new_revprop_table;
  if (revprop_table_in)
    {
      if (svn_prop_has_svn_prop(revprop_table_in, pool))
        return svn_error_create(SVN_ERR_CLIENT_PROPERTY_NAME, ((void*)0),
                                _("Standard properties can't be set "
                                  "explicitly as revision properties"));
      new_revprop_table = apr_hash_copy(pool, revprop_table_in);
    }
  else
    {
      new_revprop_table = apr_hash_make(pool);
    }
  svn_hash_sets(new_revprop_table, SVN_PROP_REVISION_LOG,
                svn_string_create(log_msg, pool));
  *revprop_table_out = new_revprop_table;
  return SVN_NO_ERROR;
}
