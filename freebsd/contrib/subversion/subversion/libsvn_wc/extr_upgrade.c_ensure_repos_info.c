
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* svn_wc_upgrade_get_repos_info_t ) (int **,int **,void*,int *,int *,int *) ;
struct TYPE_3__ {int * url; int * uuid; int * repos; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR_WC_UNSUPPORTED_FORMAT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int stub1 (int **,int **,void*,int *,int *,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_uri__is_ancestor (int *,int *) ;

__attribute__((used)) static svn_error_t *
ensure_repos_info(svn_wc_entry_t *entry,
                  const char *local_abspath,
                  svn_wc_upgrade_get_repos_info_t repos_info_func,
                  void *repos_info_baton,
                  apr_hash_t *repos_cache,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{

  if (entry->repos != ((void*)0) && entry->uuid != ((void*)0))
    return SVN_NO_ERROR;

  if ((entry->repos == ((void*)0) || entry->uuid == ((void*)0))
      && entry->url)
    {
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(scratch_pool, repos_cache);
           hi; hi = apr_hash_next(hi))
        {
          if (svn_uri__is_ancestor(apr_hash_this_key(hi), entry->url))
            {
              if (!entry->repos)
                entry->repos = apr_hash_this_key(hi);

              if (!entry->uuid)
                entry->uuid = apr_hash_this_val(hi);

              return SVN_NO_ERROR;
            }
        }
    }

  if (entry->repos == ((void*)0) && repos_info_func == ((void*)0))
    return svn_error_createf(
        SVN_ERR_WC_UNSUPPORTED_FORMAT, ((void*)0),
        _("Working copy '%s' can't be upgraded because the repository root is "
          "not available and can't be retrieved"),
        svn_dirent_local_style(local_abspath, scratch_pool));

  if (entry->uuid == ((void*)0) && repos_info_func == ((void*)0))
    return svn_error_createf(
        SVN_ERR_WC_UNSUPPORTED_FORMAT, ((void*)0),
        _("Working copy '%s' can't be upgraded because the repository uuid is "
          "not available and can't be retrieved"),
        svn_dirent_local_style(local_abspath, scratch_pool));

   if (entry->url == ((void*)0))
     return svn_error_createf(
        SVN_ERR_WC_UNSUPPORTED_FORMAT, ((void*)0),
        _("Working copy '%s' can't be upgraded because it doesn't have a url"),
        svn_dirent_local_style(local_abspath, scratch_pool));

   return svn_error_trace((*repos_info_func)(&entry->repos, &entry->uuid,
                                             repos_info_baton,
                                             entry->url,
                                             result_pool, scratch_pool));
}
