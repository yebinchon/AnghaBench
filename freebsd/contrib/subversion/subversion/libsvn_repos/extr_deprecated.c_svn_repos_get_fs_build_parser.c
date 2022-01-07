
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_t ;
typedef int svn_repos_parser_fns_t ;
typedef int svn_repos_parse_fns2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef enum svn_repos_load_uuid { ____Placeholder_svn_repos_load_uuid } svn_repos_load_uuid ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * fns_from_fns2 (int const*,int *) ;
 int svn_repos_get_fs_build_parser2 (int const**,void**,int *,int ,int,int *,char const*,int *) ;

svn_error_t *
svn_repos_get_fs_build_parser(const svn_repos_parser_fns_t **parser_callbacks,
                              void **parse_baton,
                              svn_repos_t *repos,
                              svn_boolean_t use_history,
                              enum svn_repos_load_uuid uuid_action,
                              svn_stream_t *outstream,
                              const char *parent_dir,
                              apr_pool_t *pool)
{
  const svn_repos_parse_fns2_t *fns2;

  SVN_ERR(svn_repos_get_fs_build_parser2(&fns2, parse_baton, repos,
                                         use_history, uuid_action, outstream,
                                         parent_dir, pool));

  *parser_callbacks = fns_from_fns2(fns2, pool);
  return SVN_NO_ERROR;
}
