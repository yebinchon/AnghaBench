
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_wc_crawl_revisions4 (char const*,int *,int const*,void*,int ,int ,int ,int ,int ,int ,void*,int *,int *) ;

svn_error_t *
svn_wc_crawl_revisions3(const char *path,
                        svn_wc_adm_access_t *adm_access,
                        const svn_ra_reporter3_t *reporter,
                        void *report_baton,
                        svn_boolean_t restore_files,
                        svn_depth_t depth,
                        svn_boolean_t depth_compatibility_trick,
                        svn_boolean_t use_commit_times,
                        svn_wc_notify_func2_t notify_func,
                        void *notify_baton,
                        svn_wc_traversal_info_t *traversal_info,
                        apr_pool_t *pool)
{
  return svn_wc_crawl_revisions4(path,
                                 adm_access,
                                 reporter, report_baton,
                                 restore_files,
                                 depth,
                                 FALSE,
                                 depth_compatibility_trick,
                                 use_commit_times,
                                 notify_func,
                                 notify_baton,
                                 traversal_info,
                                 pool);
}
