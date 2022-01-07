
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef char svn_boolean_t ;
struct TYPE_3__ {char const* username; int password; int may_save; } ;
typedef TYPE_1__ svn_auth_cred_simple_t ;
typedef int (* svn_auth__password_set_t ) (char*,int *,char const*,char const*,int ,int *,char,int *) ;
struct TYPE_4__ {int * plaintext_answers; int prompt_baton; int (* plaintext_prompt_func ) (char*,char const*,int ,int *) ;} ;
typedef TYPE_2__ simple_provider_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 char FALSE ;
 int SVN_AUTH_CRED_SIMPLE ;
 char const* SVN_AUTH_PARAM_CONFIG_DIR ;
 char const* SVN_AUTH_PARAM_DONT_STORE_PASSWORDS ;
 char const* SVN_AUTH_PARAM_NON_INTERACTIVE ;
 char const* SVN_AUTH_PARAM_NO_AUTH_CACHE ;
 char const* SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS ;
 int SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE ;
 int SVN_AUTH__GPG_AGENT_PASSWORD_TYPE ;
 int SVN_AUTH__KEYCHAIN_PASSWORD_TYPE ;
 int SVN_AUTH__KWALLET_PASSWORD_TYPE ;
 int SVN_AUTH__WINCRYPT_PASSWORD_TYPE ;
 int SVN_CONFIG_ASK ;
 char const* SVN_CONFIG_AUTHN_PASSTYPE_KEY ;
 char const* SVN_CONFIG_AUTHN_USERNAME_KEY ;
 int SVN_CONFIG_FALSE ;
 int SVN_CONFIG_TRUE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_BAD_CONFIG_VALUE ;
 int * SVN_NO_ERROR ;
 char TRUE ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_pool_get (int *) ;
 char* apr_palloc (int *,int) ;
 scalar_t__ strcmp (char const*,int ) ;
 int stub1 (char*,char const*,int ,int *) ;
 int * svn_config_write_auth_data (int *,int ,char const*,char const*,int *) ;
 scalar_t__ svn_cstring_casecmp (char const*,int ) ;
 int svn_error_clear (int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 char* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,char*) ;
 char* svn_string_create (char const*,int *) ;

svn_error_t *
svn_auth__simple_creds_cache_set(svn_boolean_t *saved,
                                 void *credentials,
                                 void *provider_baton,
                                 apr_hash_t *parameters,
                                 const char *realmstring,
                                 svn_auth__password_set_t password_set,
                                 const char *passtype,
                                 apr_pool_t *pool)
{
  svn_auth_cred_simple_t *creds = credentials;
  apr_hash_t *creds_hash = ((void*)0);
  const char *config_dir;
  svn_error_t *err;
  svn_boolean_t dont_store_passwords =
    svn_hash_gets(parameters, SVN_AUTH_PARAM_DONT_STORE_PASSWORDS) != ((void*)0);
  svn_boolean_t non_interactive = svn_hash_gets(parameters,
                                                SVN_AUTH_PARAM_NON_INTERACTIVE)
      != ((void*)0);
  svn_boolean_t no_auth_cache =
    (! creds->may_save) || (svn_hash_gets(parameters,
                                          SVN_AUTH_PARAM_NO_AUTH_CACHE)
                            != ((void*)0));


  SVN_ERR_ASSERT(passtype != ((void*)0));

  *saved = FALSE;

  if (no_auth_cache)
    return SVN_NO_ERROR;

  config_dir = svn_hash_gets(parameters, SVN_AUTH_PARAM_CONFIG_DIR);


  creds_hash = apr_hash_make(pool);
  svn_hash_sets(creds_hash, SVN_CONFIG_AUTHN_USERNAME_KEY,
                svn_string_create(creds->username, pool));



  if (! dont_store_passwords)
    {
      svn_boolean_t may_save_password = FALSE;




      if (passtype &&
           (strcmp(passtype, SVN_AUTH__WINCRYPT_PASSWORD_TYPE) == 0
            || strcmp(passtype, SVN_AUTH__KEYCHAIN_PASSWORD_TYPE) == 0
            || strcmp(passtype, SVN_AUTH__KWALLET_PASSWORD_TYPE) == 0
            || strcmp(passtype, SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE) == 0
            || strcmp(passtype, SVN_AUTH__GPG_AGENT_PASSWORD_TYPE) == 0))
        {
          may_save_password = TRUE;
        }
      else
        {



          const char *store_plaintext_passwords =
            svn_hash_gets(parameters, SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS);
          simple_provider_baton_t *b =
            (simple_provider_baton_t *)provider_baton;

          if (store_plaintext_passwords
              && svn_cstring_casecmp(store_plaintext_passwords,
                                     SVN_CONFIG_ASK) == 0)
            {
              if (non_interactive)



                may_save_password = FALSE;
              else if (b->plaintext_prompt_func)
                {




                  svn_boolean_t *cached_answer;
                  cached_answer = svn_hash_gets(b->plaintext_answers,
                                                realmstring);
                  if (cached_answer != ((void*)0))
                    may_save_password = *cached_answer;
                  else
                    {
                      apr_pool_t *cached_answer_pool;


                      SVN_ERR((*b->plaintext_prompt_func)(&may_save_password,
                                                          realmstring,
                                                          b->prompt_baton,
                                                          pool));
                      cached_answer_pool = apr_hash_pool_get(b->plaintext_answers);
                      cached_answer = apr_palloc(cached_answer_pool,
                                                 sizeof(svn_boolean_t));
                      *cached_answer = may_save_password;
                      svn_hash_sets(b->plaintext_answers, realmstring,
                                    cached_answer);
                    }
                }
              else
                {
                  may_save_password = TRUE;
                }
            }
          else if (store_plaintext_passwords
                   && svn_cstring_casecmp(store_plaintext_passwords,
                                          SVN_CONFIG_FALSE) == 0)
            {
              may_save_password = FALSE;
            }
          else if (!store_plaintext_passwords
                   || svn_cstring_casecmp(store_plaintext_passwords,
                                          SVN_CONFIG_TRUE) == 0)
            {
              may_save_password = TRUE;
            }
          else
            {
              return svn_error_createf
                (SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
                 _("Config error: invalid value '%s' for option '%s'"),
                store_plaintext_passwords,
                SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS);
            }

        }

      if (may_save_password)
        {
          SVN_ERR(password_set(saved, creds_hash, realmstring,
                               creds->username, creds->password,
                               parameters, non_interactive, pool));
          if (*saved && passtype)


            svn_hash_sets(creds_hash, SVN_CONFIG_AUTHN_PASSTYPE_KEY,
                          svn_string_create(passtype, pool));
        }
    }


  err = svn_config_write_auth_data(creds_hash, SVN_AUTH_CRED_SIMPLE,
                                   realmstring, config_dir, pool);
  if (err)
    *saved = FALSE;


  svn_error_clear(err);

  return SVN_NO_ERROR;
}
