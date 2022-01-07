
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_repos_begin_report3 (void**,int ,int *,char const*,char const*,char const*,int ,int ,int ,int ,int const*,void*,int ,void*,int ,int *) ;

svn_error_t *
svn_repos_begin_report2(void **report_baton,
                        svn_revnum_t revnum,
                        svn_repos_t *repos,
                        const char *fs_base,
                        const char *target,
                        const char *tgt_path,
                        svn_boolean_t text_deltas,
                        svn_depth_t depth,
                        svn_boolean_t ignore_ancestry,
                        svn_boolean_t send_copyfrom_args,
                        const svn_delta_editor_t *editor,
                        void *edit_baton,
                        svn_repos_authz_func_t authz_read_func,
                        void *authz_read_baton,
                        apr_pool_t *pool)
{
  return svn_repos_begin_report3(report_baton,
                                 revnum,
                                 repos,
                                 fs_base,
                                 target,
                                 tgt_path,
                                 text_deltas,
                                 depth,
                                 ignore_ancestry,
                                 send_copyfrom_args,
                                 editor,
                                 edit_baton,
                                 authz_read_func,
                                 authz_read_baton,
                                 0,
                                 pool);
}
