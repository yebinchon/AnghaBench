
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_parse_fns3_t ;
typedef int svn_repos_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef enum svn_repos_load_uuid { ____Placeholder_svn_repos_load_uuid } svn_repos_load_uuid ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int svn_repos_get_fs_build_parser6 (int const**,void**,int *,int ,int ,int ,int ,int,char const*,int ,int ,int ,int ,int ,void*,int *) ;
 int * svn_repos_parse_dumpstream3 (int *,int const*,void*,int ,int ,void*,int *) ;

svn_error_t *
svn_repos_load_fs6(svn_repos_t *repos,
                   svn_stream_t *dumpstream,
                   svn_revnum_t start_rev,
                   svn_revnum_t end_rev,
                   enum svn_repos_load_uuid uuid_action,
                   const char *parent_dir,
                   svn_boolean_t use_pre_commit_hook,
                   svn_boolean_t use_post_commit_hook,
                   svn_boolean_t validate_props,
                   svn_boolean_t ignore_dates,
                   svn_boolean_t normalize_props,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *pool)
{
  const svn_repos_parse_fns3_t *parser;
  void *parse_baton;



  SVN_ERR(svn_repos_get_fs_build_parser6(&parser, &parse_baton,
                                         repos,
                                         start_rev, end_rev,
                                         TRUE,
                                         validate_props,
                                         uuid_action,
                                         parent_dir,
                                         use_pre_commit_hook,
                                         use_post_commit_hook,
                                         ignore_dates,
                                         normalize_props,
                                         notify_func,
                                         notify_baton,
                                         pool));

  return svn_repos_parse_dumpstream3(dumpstream, parser, parse_baton, FALSE,
                                     cancel_func, cancel_baton, pool);
}
