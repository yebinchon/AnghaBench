
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_opt_revision_t ;
typedef int * svn_mergeinfo_t ;
typedef scalar_t__ svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int get_mergeinfo (scalar_t__*,char const**,char const*,int const*,int ,int ,TYPE_1__*,int *,int *,int *) ;
 int mergeinfo_relpaths_to_urls (int **,int *,char const*,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_hash_gets (scalar_t__,char const*) ;
 int svn_path_is_url (char const*) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;
 int svn_wc__node_get_repos_info (int *,char const**,int *,int *,int ,char const*,int *,int *) ;

svn_error_t *
svn_client_mergeinfo_get_merged(apr_hash_t **mergeinfo_p,
                                const char *path_or_url,
                                const svn_opt_revision_t *peg_revision,
                                svn_client_ctx_t *ctx,
                                apr_pool_t *pool)
{
  const char *repos_root;
  svn_mergeinfo_catalog_t mergeinfo_cat;
  svn_mergeinfo_t mergeinfo;

  SVN_ERR(get_mergeinfo(&mergeinfo_cat, &repos_root, path_or_url,
                        peg_revision, FALSE, FALSE, ctx, ((void*)0), pool, pool));
  if (mergeinfo_cat)
    {
      const char *repos_relpath;

      if (! svn_path_is_url(path_or_url))
        {
          SVN_ERR(svn_dirent_get_absolute(&path_or_url, path_or_url, pool));
          SVN_ERR(svn_wc__node_get_repos_info(((void*)0), &repos_relpath, ((void*)0), ((void*)0),
                                              ctx->wc_ctx, path_or_url,
                                              pool, pool));
        }
      else
        {
          repos_relpath = svn_uri_skip_ancestor(repos_root, path_or_url, pool);

          SVN_ERR_ASSERT(repos_relpath != ((void*)0));
        }

      mergeinfo = svn_hash_gets(mergeinfo_cat, repos_relpath);
    }
  else
    {
      mergeinfo = ((void*)0);
    }

  SVN_ERR(mergeinfo_relpaths_to_urls(mergeinfo_p, mergeinfo,
                                     repos_root, pool, pool));
  return SVN_NO_ERROR;
}
