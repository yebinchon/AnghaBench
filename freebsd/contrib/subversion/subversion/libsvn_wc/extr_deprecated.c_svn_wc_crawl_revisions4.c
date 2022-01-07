
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int gather_traversal_info (int *,char const*,char const*,int ,int *,int ,int ,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_crawl_revisions5 (int *,char const*,int const*,void*,int ,int ,int ,int ,int ,int *,int *,int ,void*,int *) ;

svn_error_t *
svn_wc_crawl_revisions4(const char *path,
                        svn_wc_adm_access_t *adm_access,
                        const svn_ra_reporter3_t *reporter,
                        void *report_baton,
                        svn_boolean_t restore_files,
                        svn_depth_t depth,
                        svn_boolean_t honor_depth_exclude,
                        svn_boolean_t depth_compatibility_trick,
                        svn_boolean_t use_commit_times,
                        svn_wc_notify_func2_t notify_func,
                        void *notify_baton,
                        svn_wc_traversal_info_t *traversal_info,
                        apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *wc_db = svn_wc__adm_get_db(adm_access);
  const char *local_abspath;

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), wc_db, pool));
  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  SVN_ERR(svn_wc_crawl_revisions5(wc_ctx,
                                  local_abspath,
                                  reporter,
                                  report_baton,
                                  restore_files,
                                  depth,
                                  honor_depth_exclude,
                                  depth_compatibility_trick,
                                  use_commit_times,
                                  ((void*)0) ,
                                  ((void*)0) ,
                                  notify_func,
                                  notify_baton,
                                  pool));

  if (traversal_info)
    SVN_ERR(gather_traversal_info(wc_ctx, local_abspath, path, depth,
                                  traversal_info, TRUE, FALSE, pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
