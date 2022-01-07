
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR_BAD_CONFIG_VALUE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_strtoi64 (char const*,char**,int ) ;
 char* svn_config_get_server_setting (int *,char const*,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;

svn_error_t*
svn_config_get_server_setting_int(svn_config_t *cfg,
                                  const char *server_group,
                                  const char *option_name,
                                  apr_int64_t default_value,
                                  apr_int64_t *result_value,
                                  apr_pool_t *pool)
{
  const char* tmp_value;
  char *end_pos;

  tmp_value = svn_config_get_server_setting(cfg, server_group,
                                            option_name, ((void*)0));
  if (tmp_value == ((void*)0))
    *result_value = default_value;
  else
    {

      *result_value = apr_strtoi64(tmp_value, &end_pos, 0);

      if (*end_pos != 0)
        {
          return svn_error_createf
            (SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
             _("Config error: invalid integer value '%s'"),
             tmp_value);
        }
    }

  return SVN_NO_ERROR;
}
