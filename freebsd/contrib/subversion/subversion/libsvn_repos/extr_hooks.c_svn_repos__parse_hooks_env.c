
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
struct parse_hooks_env_section_baton {int * hooks_env; int * cfg; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int parse_hooks_env_section ;
 int svn_config_enumerate_sections2 (int *,int ,struct parse_hooks_env_section_baton*,int *) ;
 int svn_config_read3 (int **,char const*,int ,int ,int ,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;

svn_error_t *
svn_repos__parse_hooks_env(apr_hash_t **hooks_env_p,
                           const char *local_abspath,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  struct parse_hooks_env_section_baton b;
  if (local_abspath)
    {
      svn_node_kind_t kind;
      SVN_ERR(svn_io_check_path(local_abspath, &kind, scratch_pool));

      b.hooks_env = apr_hash_make(result_pool);

      if (kind != svn_node_none)
        {
          svn_config_t *cfg;
          SVN_ERR(svn_config_read3(&cfg, local_abspath, FALSE,
                                  TRUE, TRUE, scratch_pool));
          b.cfg = cfg;

          (void)svn_config_enumerate_sections2(cfg, parse_hooks_env_section,
                                               &b, scratch_pool);
        }

      *hooks_env_p = b.hooks_env;
    }
  else
    {
      *hooks_env_p = ((void*)0);
    }

  return SVN_NO_ERROR;
}
