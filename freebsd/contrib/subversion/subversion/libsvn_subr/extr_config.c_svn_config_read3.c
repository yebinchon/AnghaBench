
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REGISTRY_PREFIX ;
 int SVN_REGISTRY_PREFIX_LEN ;
 scalar_t__ strncmp (char const*,int ,int) ;
 int * svn_config__parse_file (int *,char const*,int ,int *) ;
 int * svn_config__parse_registry (int *,char const*,int ,int *) ;
 int svn_config_create2 (int **,int ,int ,int *) ;

svn_error_t *
svn_config_read3(svn_config_t **cfgp, const char *file,
                 svn_boolean_t must_exist,
                 svn_boolean_t section_names_case_sensitive,
                 svn_boolean_t option_names_case_sensitive,
                 apr_pool_t *result_pool)
{
  svn_config_t *cfg;
  svn_error_t *err;

  SVN_ERR(svn_config_create2(&cfg,
                             section_names_case_sensitive,
                             option_names_case_sensitive,
                             result_pool));
    err = svn_config__parse_file(cfg, file, must_exist, result_pool);

  if (err != SVN_NO_ERROR)
    return err;
  else
    *cfgp = cfg;

  return SVN_NO_ERROR;
}
