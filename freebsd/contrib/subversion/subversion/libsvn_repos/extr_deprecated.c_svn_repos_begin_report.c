
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_repos_begin_report2 (void**,int ,int *,char const*,char const*,char const*,int ,int ,int ,int ,int const*,void*,int ,void*,int *) ;

svn_error_t *
svn_repos_begin_report(void **report_baton,
                       svn_revnum_t revnum,
                       const char *username,
                       svn_repos_t *repos,
                       const char *fs_base,
                       const char *s_operand,
                       const char *switch_path,
                       svn_boolean_t text_deltas,
                       svn_boolean_t recurse,
                       svn_boolean_t ignore_ancestry,
                       const svn_delta_editor_t *editor,
                       void *edit_baton,
                       svn_repos_authz_func_t authz_read_func,
                       void *authz_read_baton,
                       apr_pool_t *pool)
{
  return svn_repos_begin_report2(report_baton,
                                 revnum,
                                 repos,
                                 fs_base,
                                 s_operand,
                                 switch_path,
                                 text_deltas,
                                 SVN_DEPTH_INFINITY_OR_FILES(recurse),
                                 ignore_ancestry,
                                 FALSE,
                                 editor,
                                 edit_baton,
                                 authz_read_func,
                                 authz_read_baton,
                                 pool);
}
