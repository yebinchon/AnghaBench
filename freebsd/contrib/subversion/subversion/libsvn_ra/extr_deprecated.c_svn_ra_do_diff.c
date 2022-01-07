
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_ra_reporter2_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 int TRUE ;
 scalar_t__ svn_path_is_empty (char const*) ;
 scalar_t__ svn_path_is_single_path_component (char const*) ;
 int * svn_ra_do_diff2 (int *,int const**,void**,int ,char const*,int ,int ,int ,char const*,int const*,void*,int *) ;

svn_error_t *svn_ra_do_diff(svn_ra_session_t *session,
                            const svn_ra_reporter2_t **reporter,
                            void **report_baton,
                            svn_revnum_t revision,
                            const char *diff_target,
                            svn_boolean_t recurse,
                            svn_boolean_t ignore_ancestry,
                            const char *versus_url,
                            const svn_delta_editor_t *diff_editor,
                            void *diff_baton,
                            apr_pool_t *pool)
{
  SVN_ERR_ASSERT(svn_path_is_empty(diff_target)
                 || svn_path_is_single_path_component(diff_target));
  return svn_ra_do_diff2(session, reporter, report_baton, revision,
                         diff_target, recurse, ignore_ancestry, TRUE,
                         versus_url, diff_editor, diff_baton, pool);
}
