
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_t ;
typedef int svn_repos_parse_fns2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef enum svn_repos_load_uuid { ____Placeholder_svn_repos_load_uuid } svn_repos_load_uuid ;
typedef int apr_pool_t ;


 int FALSE ;
 int * repos_notify_handler ;
 int * svn_repos_get_fs_build_parser3 (int const**,void**,int *,int ,int ,int,char const*,int *,int *,int *) ;

svn_error_t *
svn_repos_get_fs_build_parser2(const svn_repos_parse_fns2_t **parser,
                               void **parse_baton,
                               svn_repos_t *repos,
                               svn_boolean_t use_history,
                               enum svn_repos_load_uuid uuid_action,
                               svn_stream_t *outstream,
                               const char *parent_dir,
                               apr_pool_t *pool)
{
  return svn_repos_get_fs_build_parser3(parser, parse_baton, repos, use_history,
                                        FALSE, uuid_action, parent_dir,
                                        outstream ? repos_notify_handler : ((void*)0),
                                        outstream, pool);
}
