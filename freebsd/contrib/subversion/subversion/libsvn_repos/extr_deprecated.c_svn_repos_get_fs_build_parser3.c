
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_repos_parse_fns3_t ;
typedef int svn_repos_parse_fns2_t ;
typedef int svn_repos_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef enum svn_repos_load_uuid { ____Placeholder_svn_repos_load_uuid } svn_repos_load_uuid ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int * fns2_from_fns3 (int const*,int *) ;
 int svn_repos_get_fs_build_parser4 (int const**,void**,int *,int ,int ,int ,int ,int,char const*,int ,void*,int *) ;

svn_error_t *
svn_repos_get_fs_build_parser3(const svn_repos_parse_fns2_t **callbacks,
                               void **parse_baton,
                               svn_repos_t *repos,
                               svn_boolean_t use_history,
                               svn_boolean_t validate_props,
                               enum svn_repos_load_uuid uuid_action,
                               const char *parent_dir,
                               svn_repos_notify_func_t notify_func,
                               void *notify_baton,
                               apr_pool_t *pool)
{
  const svn_repos_parse_fns3_t *fns3;

  SVN_ERR(svn_repos_get_fs_build_parser4(&fns3, parse_baton, repos,
                                         SVN_INVALID_REVNUM,
                                         SVN_INVALID_REVNUM,
                                         use_history, validate_props,
                                         uuid_action, parent_dir,
                                         notify_func, notify_baton, pool));

  *callbacks = fns2_from_fns3(fns3, pool);
  return SVN_NO_ERROR;
}
