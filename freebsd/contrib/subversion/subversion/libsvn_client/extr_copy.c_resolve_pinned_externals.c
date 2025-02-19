
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_7__ {int src_abspath_or_url; int src_revnum; } ;
typedef TYPE_2__ svn_client__copy_pair_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (char const*) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 void* apr_hash_this_val (int *) ;
 int pin_externals_prop (int **,int *,int const*,char const*,char const*,TYPE_1__*,int *,int *) ;
 int svn_client__ensure_ra_session_url (char const**,int *,int ,int *) ;
 int svn_client__remote_propget (int *,int *,int ,int ,char*,int ,int ,int *,int ,int *,int *) ;
 int svn_depth_infinity ;
 char* svn_dirent_skip_ancestor (int ,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int svn_node_dir ;
 scalar_t__ svn_path_is_url (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;
 int * svn_string_create (char const*,int *) ;
 char* svn_uri_skip_ancestor (int ,char const*,int *) ;
 int svn_wc__externals_gather_definitions (int **,int *,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
resolve_pinned_externals(apr_hash_t **pinned_externals,
                         const apr_hash_t *externals_to_pin,
                         svn_client__copy_pair_t *pair,
                         svn_ra_session_t *ra_session,
                         const char *repos_root_url,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  const char *old_url = ((void*)0);
  apr_hash_t *externals_props;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  *pinned_externals = apr_hash_make(result_pool);

  if (svn_path_is_url(pair->src_abspath_or_url))
    {
      SVN_ERR(svn_client__ensure_ra_session_url(&old_url, ra_session,
                                                pair->src_abspath_or_url,
                                                scratch_pool));
      externals_props = apr_hash_make(scratch_pool);
      SVN_ERR(svn_client__remote_propget(externals_props, ((void*)0),
                                         SVN_PROP_EXTERNALS,
                                         pair->src_abspath_or_url, "",
                                         svn_node_dir,
                                         pair->src_revnum,
                                         ra_session,
                                         svn_depth_infinity,
                                         scratch_pool,
                                         scratch_pool));
    }
  else
    {
      SVN_ERR(svn_wc__externals_gather_definitions(&externals_props, ((void*)0),
                                                   ctx->wc_ctx,
                                                   pair->src_abspath_or_url,
                                                   svn_depth_infinity,
                                                   scratch_pool, scratch_pool));


      for (hi = apr_hash_first(scratch_pool, externals_props);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *local_abspath_or_url = apr_hash_this_key(hi);
          const char *propval = apr_hash_this_val(hi);
          svn_string_t *new_propval = svn_string_create(propval, scratch_pool);

          svn_hash_sets(externals_props, local_abspath_or_url, new_propval);
        }
    }

  if (apr_hash_count(externals_props) == 0)
    {
      if (old_url)
        SVN_ERR(svn_ra_reparent(ra_session, old_url, scratch_pool));
      return SVN_NO_ERROR;
    }

  iterpool = svn_pool_create(scratch_pool);
  for (hi = apr_hash_first(scratch_pool, externals_props);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *local_abspath_or_url = apr_hash_this_key(hi);
      svn_string_t *externals_propval = apr_hash_this_val(hi);
      const char *relpath;
      svn_string_t *new_propval;

      svn_pool_clear(iterpool);

      SVN_ERR(pin_externals_prop(&new_propval, externals_propval,
                                 externals_to_pin,
                                 repos_root_url, local_abspath_or_url, ctx,
                                 result_pool, iterpool));
      if (new_propval)
        {
          if (svn_path_is_url(pair->src_abspath_or_url))
            relpath = svn_uri_skip_ancestor(pair->src_abspath_or_url,
                                            local_abspath_or_url,
                                            result_pool);
          else
            relpath = svn_dirent_skip_ancestor(pair->src_abspath_or_url,
                                               local_abspath_or_url);
          SVN_ERR_ASSERT(relpath);

          svn_hash_sets(*pinned_externals, relpath, new_propval);
        }
    }
  svn_pool_destroy(iterpool);

  if (old_url)
    SVN_ERR(svn_ra_reparent(ra_session, old_url, scratch_pool));

  return SVN_NO_ERROR;
}
