
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_mergeinfo_t ;
typedef int svn_mergeinfo_inheritance_t ;
typedef int * svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 char const* apr_pstrdup (int *,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_client__get_wc_mergeinfo (scalar_t__*,scalar_t__*,int ,char const*,char const*,char const**,scalar_t__,TYPE_2__*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_hash_sets (int *,char const*,scalar_t__) ;
 int svn_mergeinfo_parse (scalar_t__*,int ,int *) ;
 int svn_wc__node_get_repos_info (int *,char const**,char const**,int *,int ,char const*,int *,int *) ;
 int svn_wc__prop_retrieve_recursive (int **,int ,char const*,int ,int *,int *) ;

svn_error_t *
svn_client__get_wc_mergeinfo_catalog(svn_mergeinfo_catalog_t *mergeinfo_cat,
                                     svn_boolean_t *inherited,
                                     svn_boolean_t include_descendants,
                                     svn_mergeinfo_inheritance_t inherit,
                                     const char *local_abspath,
                                     const char *limit_path,
                                     const char **walked_path,
                                     svn_boolean_t ignore_invalid_mergeinfo,
                                     svn_client_ctx_t *ctx,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  const char *target_repos_relpath;
  svn_mergeinfo_t mergeinfo;
  const char *repos_root;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  *mergeinfo_cat = ((void*)0);
  SVN_ERR(svn_wc__node_get_repos_info(((void*)0), &target_repos_relpath,
                                      &repos_root, ((void*)0),
                                      ctx->wc_ctx, local_abspath,
                                      scratch_pool, scratch_pool));



  SVN_ERR(svn_client__get_wc_mergeinfo(&mergeinfo, inherited, inherit,
                                       local_abspath, limit_path,
                                       walked_path, ignore_invalid_mergeinfo,
                                       ctx, result_pool, scratch_pool));



  if (mergeinfo)
    {
      *mergeinfo_cat = apr_hash_make(result_pool);
      svn_hash_sets(*mergeinfo_cat,
                    apr_pstrdup(result_pool, target_repos_relpath), mergeinfo);
    }






  if (include_descendants)
    {
      apr_hash_t *mergeinfo_props;
      apr_hash_index_t *hi;

      SVN_ERR(svn_wc__prop_retrieve_recursive(&mergeinfo_props,
                                              ctx->wc_ctx, local_abspath,
                                              SVN_PROP_MERGEINFO,
                                              scratch_pool, scratch_pool));


      for (hi = apr_hash_first(scratch_pool, mergeinfo_props);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *node_abspath = apr_hash_this_key(hi);
          svn_string_t *propval = apr_hash_this_val(hi);
          svn_mergeinfo_t subtree_mergeinfo;
          const char *repos_relpath;

          if (strcmp(node_abspath, local_abspath) == 0)
            continue;

          SVN_ERR(svn_wc__node_get_repos_info(((void*)0), &repos_relpath, ((void*)0), ((void*)0),
                                              ctx->wc_ctx, node_abspath,
                                              result_pool, scratch_pool));

          SVN_ERR(svn_mergeinfo_parse(&subtree_mergeinfo, propval->data,
                                      result_pool));




          if (*mergeinfo_cat == ((void*)0))
            *mergeinfo_cat = apr_hash_make(result_pool);

          svn_hash_sets(*mergeinfo_cat, repos_relpath, subtree_mergeinfo);
        }
    }

  return SVN_NO_ERROR;
}
