
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct getter_baton {char const* local_abspath; int const* mime_type; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char const* SVN_PROP_MIME_TYPE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int ensure_prop_is_regular_kind (char const*) ;
 int * get_file_for_validation ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int const*) ;
 int svn_wc_canonicalize_svn_prop (int const**,char const*,int const*,char const*,int ,int ,int *,struct getter_baton*,int *) ;

svn_error_t *
svn_wc__canonicalize_props(apr_hash_t **prepared_props,
                           const char *local_abspath,
                           svn_node_kind_t node_kind,
                           const apr_hash_t *props,
                           svn_boolean_t skip_some_checks,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const svn_string_t *mime_type;
  struct getter_baton gb;
  apr_hash_index_t *hi;



  *prepared_props = apr_hash_make(result_pool);



  mime_type = svn_hash_gets((apr_hash_t *)props, SVN_PROP_MIME_TYPE);
  if (mime_type)
    {
      SVN_ERR(svn_wc_canonicalize_svn_prop(
                &mime_type, SVN_PROP_MIME_TYPE, mime_type,
                local_abspath, node_kind, skip_some_checks,
                ((void*)0), ((void*)0), scratch_pool));
      svn_hash_sets(*prepared_props, SVN_PROP_MIME_TYPE, mime_type);
    }


  gb.mime_type = mime_type;
  gb.local_abspath = local_abspath;


  for (hi = apr_hash_first(scratch_pool, (apr_hash_t *)props); hi;
       hi = apr_hash_next(hi))
    {
      const char *name = apr_hash_this_key(hi);
      const svn_string_t *value = apr_hash_this_val(hi);

      if (strcmp(name, SVN_PROP_MIME_TYPE) == 0)
        continue;

      SVN_ERR(ensure_prop_is_regular_kind(name));
      SVN_ERR(svn_wc_canonicalize_svn_prop(
                &value, name, value,
                local_abspath, node_kind, skip_some_checks,
                get_file_for_validation, &gb, scratch_pool));
      svn_hash_sets(*prepared_props, name, value);
    }

  return SVN_NO_ERROR;
}
