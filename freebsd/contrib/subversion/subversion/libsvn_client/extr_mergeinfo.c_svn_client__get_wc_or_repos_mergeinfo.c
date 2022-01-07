
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int * svn_mergeinfo_t ;
typedef int svn_mergeinfo_inheritance_t ;
typedef scalar_t__ svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (scalar_t__) ;
 int apr_hash_first (int *,scalar_t__) ;
 int * apr_hash_this_val (int ) ;
 int svn_client__get_wc_or_repos_mergeinfo_catalog (scalar_t__*,int *,int *,int ,int ,int ,int ,int *,char const*,int *,int *,int *) ;

svn_error_t *
svn_client__get_wc_or_repos_mergeinfo(svn_mergeinfo_t *target_mergeinfo,
                                      svn_boolean_t *inherited,
                                      svn_boolean_t *from_repos,
                                      svn_boolean_t repos_only,
                                      svn_mergeinfo_inheritance_t inherit,
                                      svn_ra_session_t *ra_session,
                                      const char *target_wcpath,
                                      svn_client_ctx_t *ctx,
                                      apr_pool_t *pool)
{
  svn_mergeinfo_catalog_t tgt_mergeinfo_cat;

  *target_mergeinfo = ((void*)0);

  SVN_ERR(svn_client__get_wc_or_repos_mergeinfo_catalog(&tgt_mergeinfo_cat,
                                                        inherited, from_repos,
                                                        FALSE,
                                                        repos_only,
                                                        FALSE, inherit,
                                                        ra_session,
                                                        target_wcpath, ctx,
                                                        pool, pool));
  if (tgt_mergeinfo_cat && apr_hash_count(tgt_mergeinfo_cat))
    {





      *target_mergeinfo =
        apr_hash_this_val(apr_hash_first(pool, tgt_mergeinfo_cat));

    }

  return SVN_NO_ERROR;
}
