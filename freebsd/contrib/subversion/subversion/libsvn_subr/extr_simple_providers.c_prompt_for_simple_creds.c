
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_9__ {int may_save; void* password; void* username; } ;
typedef TYPE_2__ svn_auth_cred_simple_t ;
struct TYPE_10__ {int prompt_baton; int (* prompt_func ) (TYPE_2__**,int ,char const*,char const*,scalar_t__,int *) ;} ;
typedef TYPE_3__ simple_prompt_provider_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH_CRED_SIMPLE ;
 int SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS ;
 int SVN_AUTH_PARAM_CONFIG_DIR ;
 int SVN_AUTH_PARAM_DEFAULT_PASSWORD ;
 int SVN_AUTH_PARAM_DEFAULT_USERNAME ;
 int SVN_AUTH_PARAM_SERVER_GROUP ;
 int SVN_CONFIG_AUTHN_USERNAME_KEY ;
 int SVN_CONFIG_OPTION_USERNAME ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_2__* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 int stub1 (TYPE_2__**,int ,char const*,char const*,scalar_t__,int *) ;
 char* svn_config_get_server_setting (int *,char const*,int ,int *) ;
 int * svn_config_read_auth_data (int **,int ,char const*,char const*,int *) ;
 int svn_error_clear (int *) ;
 void* svn_hash_gets (int *,int ) ;
 char* svn_user_get_name (int *) ;

__attribute__((used)) static svn_error_t *
prompt_for_simple_creds(svn_auth_cred_simple_t **cred_p,
                        simple_prompt_provider_baton_t *pb,
                        apr_hash_t *parameters,
                        const char *realmstring,
                        svn_boolean_t first_time,
                        svn_boolean_t may_save,
                        apr_pool_t *pool)
{
  const char *default_username = ((void*)0);
  const char *default_password = ((void*)0);

  *cred_p = ((void*)0);



  if (first_time)
    {
      default_username = svn_hash_gets(parameters,
                                       SVN_AUTH_PARAM_DEFAULT_USERNAME);


      if (! default_username)
        {
          const char *config_dir = svn_hash_gets(parameters,
                                                 SVN_AUTH_PARAM_CONFIG_DIR);
          apr_hash_t *creds_hash = ((void*)0);
          svn_string_t *str;
          svn_error_t *err;

          err = svn_config_read_auth_data(&creds_hash, SVN_AUTH_CRED_SIMPLE,
                                          realmstring, config_dir, pool);
          svn_error_clear(err);
          if (! err && creds_hash)
            {
              str = svn_hash_gets(creds_hash, SVN_CONFIG_AUTHN_USERNAME_KEY);
              if (str && str->data)
                default_username = str->data;
            }
        }


      if (! default_username)
        {
          svn_config_t *cfg = svn_hash_gets(parameters,
                                            SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS);
          const char *server_group = svn_hash_gets(parameters,
                                                   SVN_AUTH_PARAM_SERVER_GROUP);
          default_username =
            svn_config_get_server_setting(cfg, server_group,
                                          SVN_CONFIG_OPTION_USERNAME,
                                          ((void*)0));
        }


      if (! default_username)
        default_username = svn_user_get_name(pool);

      default_password = svn_hash_gets(parameters,
                                       SVN_AUTH_PARAM_DEFAULT_PASSWORD);
    }







  if (default_username && default_password)
    {
      *cred_p = apr_palloc(pool, sizeof(**cred_p));
      (*cred_p)->username = apr_pstrdup(pool, default_username);
      (*cred_p)->password = apr_pstrdup(pool, default_password);
      (*cred_p)->may_save = TRUE;
    }
  else
    {
      SVN_ERR(pb->prompt_func(cred_p, pb->prompt_baton, realmstring,
                              default_username, may_save, pool));
    }

  return SVN_NO_ERROR;
}
