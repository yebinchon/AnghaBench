
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_ra_reporter2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct wrap_3to2_report_baton {void* baton; int const* reporter; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_wc_crawl_revisions3 (char const*,int *,int *,struct wrap_3to2_report_baton*,int ,int ,int ,int ,int ,void*,int *,int *) ;
 int wrap_3to2_reporter ;

svn_error_t *
svn_wc_crawl_revisions2(const char *path,
                        svn_wc_adm_access_t *adm_access,
                        const svn_ra_reporter2_t *reporter,
                        void *report_baton,
                        svn_boolean_t restore_files,
                        svn_boolean_t recurse,
                        svn_boolean_t use_commit_times,
                        svn_wc_notify_func2_t notify_func,
                        void *notify_baton,
                        svn_wc_traversal_info_t *traversal_info,
                        apr_pool_t *pool)
{
  struct wrap_3to2_report_baton wrb;
  wrb.reporter = reporter;
  wrb.baton = report_baton;

  return svn_wc_crawl_revisions3(path,
                                 adm_access,
                                 &wrap_3to2_reporter, &wrb,
                                 restore_files,
                                 SVN_DEPTH_INFINITY_OR_FILES(recurse),
                                 FALSE,
                                 use_commit_times,
                                 notify_func,
                                 notify_baton,
                                 traversal_info,
                                 pool);
}
