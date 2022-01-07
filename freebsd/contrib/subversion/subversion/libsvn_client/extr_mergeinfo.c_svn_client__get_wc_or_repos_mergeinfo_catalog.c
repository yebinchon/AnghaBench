
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_mergeinfo_inheritance_t ;
typedef int * svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char const* SVN_PROP_MERGEINFO ;
 scalar_t__ TRUE ;
 int svn_client__get_repos_mergeinfo_catalog (int **,int *,char const*,int ,int ,scalar_t__,scalar_t__,int *,int *) ;
 int svn_client__get_wc_mergeinfo_catalog (int **,scalar_t__*,scalar_t__,int ,char const*,int *,int *,scalar_t__,TYPE_1__*,int *,int *) ;
 int svn_client_open_ra_session2 (int **,char const*,int *,TYPE_1__*,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 scalar_t__ svn_hash_gets (int *,char const*) ;
 int svn_mergeinfo_catalog_merge (int *,int *,int *,int *) ;
 int svn_mergeinfo_explicit ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc__node_get_origin (int *,int *,char const**,char const**,int *,int *,int *,int ,char const*,scalar_t__,int *,int *) ;
 int svn_wc_get_pristine_props (int **,int ,char const*,int *,int *) ;

svn_error_t *
svn_client__get_wc_or_repos_mergeinfo_catalog(
  svn_mergeinfo_catalog_t *target_mergeinfo_catalog,
  svn_boolean_t *inherited_p,
  svn_boolean_t *from_repos,
  svn_boolean_t include_descendants,
  svn_boolean_t repos_only,
  svn_boolean_t ignore_invalid_mergeinfo,
  svn_mergeinfo_inheritance_t inherit,
  svn_ra_session_t *ra_session,
  const char *target_wcpath,
  svn_client_ctx_t *ctx,
  apr_pool_t *result_pool,
  apr_pool_t *scratch_pool)
{
  const char *url;
  svn_revnum_t target_rev;
  const char *local_abspath;
  const char *repos_root;
  const char *repos_relpath;
  svn_mergeinfo_catalog_t target_mergeinfo_cat_wc = ((void*)0);
  svn_mergeinfo_catalog_t target_mergeinfo_cat_repos = ((void*)0);

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, target_wcpath,
                                  scratch_pool));

  if (from_repos)
    *from_repos = FALSE;





  SVN_ERR(svn_wc__node_get_origin(((void*)0), &target_rev, &repos_relpath,
                                  &repos_root, ((void*)0), ((void*)0), ((void*)0),
                                  ctx->wc_ctx, local_abspath, FALSE,
                                  scratch_pool, scratch_pool));

  if (repos_relpath)
    url = svn_path_url_add_component2(repos_root, repos_relpath, scratch_pool);
  else
    url = ((void*)0);

  if (!repos_only)
    {
      svn_boolean_t inherited;
      SVN_ERR(svn_client__get_wc_mergeinfo_catalog(&target_mergeinfo_cat_wc,
                                                   &inherited,
                                                   include_descendants,
                                                   inherit,
                                                   local_abspath,
                                                   ((void*)0), ((void*)0),
                                                   ignore_invalid_mergeinfo,
                                                   ctx,
                                                   result_pool,
                                                   scratch_pool));
      if (inherited_p)
        *inherited_p = inherited;




      if (! (inherited
             || (inherit == svn_mergeinfo_explicit)
             || (repos_relpath
                 && target_mergeinfo_cat_wc
                 && svn_hash_gets(target_mergeinfo_cat_wc, repos_relpath))))
        {
          repos_only = TRUE;


          include_descendants = FALSE;
        }
    }

  if (repos_only)
    {

      if (url != ((void*)0))
        {
          apr_hash_t *original_props;




          SVN_ERR(svn_wc_get_pristine_props(&original_props,
                                            ctx->wc_ctx, local_abspath,
                                            result_pool, scratch_pool));
          if (!svn_hash_gets(original_props, SVN_PROP_MERGEINFO))
            {
              apr_pool_t *sesspool = ((void*)0);

              if (! ra_session)
                {
                  sesspool = svn_pool_create(scratch_pool);
                  SVN_ERR(svn_client_open_ra_session2(&ra_session, url, ((void*)0),
                                                      ctx,
                                                      sesspool, sesspool));
                }

              SVN_ERR(svn_client__get_repos_mergeinfo_catalog(
                        &target_mergeinfo_cat_repos, ra_session,
                        url, target_rev, inherit,
                        TRUE, include_descendants,
                        result_pool, scratch_pool));

              if (target_mergeinfo_cat_repos
                  && svn_hash_gets(target_mergeinfo_cat_repos, repos_relpath))
                {
                  if (inherited_p)
                    *inherited_p = TRUE;
                  if (from_repos)
                    *from_repos = TRUE;
                }




              if (sesspool)
                {
                  svn_pool_destroy(sesspool);
                }
            }
        }
    }


  if (target_mergeinfo_cat_wc)
    {
      *target_mergeinfo_catalog = target_mergeinfo_cat_wc;
      if (target_mergeinfo_cat_repos)
        SVN_ERR(svn_mergeinfo_catalog_merge(*target_mergeinfo_catalog,
                                            target_mergeinfo_cat_repos,
                                            result_pool, scratch_pool));
    }
  else if (target_mergeinfo_cat_repos)
    {
      *target_mergeinfo_catalog = target_mergeinfo_cat_repos;
    }
  else
    {
      *target_mergeinfo_catalog = ((void*)0);
    }

  return SVN_NO_ERROR;
}
