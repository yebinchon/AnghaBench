#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  char svn_config_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_3__ {char const* password; int /*<<< orphan*/  may_save; } ;
typedef  TYPE_1__ svn_auth_cred_ssl_client_cert_pw_t ;
typedef  int /*<<< orphan*/  (* svn_auth__password_get_t ) (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_AUTH_CRED_SSL_CLIENT_CERT_PW ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_DIR ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_NON_INTERACTIVE ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_SERVER_GROUP ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_SSL_CLIENT_CERT_PASSWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC6(void **credentials_p,
                                       void **iter_baton,
                                       void *provider_baton,
                                       apr_hash_t *parameters,
                                       const char *realmstring,
                                       svn_auth__password_get_t passphrase_get,
                                       const char *passtype,
                                       apr_pool_t *pool)
{
  svn_config_t *cfg = FUNC5(parameters,
                                    SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS);
  const char *server_group = FUNC5(parameters,
                                           SVN_AUTH_PARAM_SERVER_GROUP);
  svn_boolean_t non_interactive = FUNC5(parameters,
                                                SVN_AUTH_PARAM_NON_INTERACTIVE)
      != NULL;
  const char *password =
    FUNC2(cfg, server_group,
                                  SVN_CONFIG_OPTION_SSL_CLIENT_CERT_PASSWORD,
                                  NULL);
  if (! password)
    {
      svn_error_t *err;
      apr_hash_t *creds_hash = NULL;
      const char *config_dir = FUNC5(parameters,
                                             SVN_AUTH_PARAM_CONFIG_DIR);

      /* Try to load passphrase from the auth/ cache. */
      err = FUNC3(&creds_hash,
                                      SVN_AUTH_CRED_SSL_CLIENT_CERT_PW,
                                      realmstring, config_dir, pool);
      FUNC4(err);
      if (! err && creds_hash)
        {
          svn_boolean_t done;

          FUNC0(passphrase_get(&done, &password, creds_hash, realmstring,
                                 NULL, parameters, non_interactive, pool));
          if (!done)
            password = NULL;
        }
    }

  if (password)
    {
      svn_auth_cred_ssl_client_cert_pw_t *cred
        = FUNC1(pool, sizeof(*cred));
      cred->password = password;
      cred->may_save = FALSE;
      *credentials_p = cred;
    }
  else *credentials_p = NULL;
  *iter_baton = NULL;
  return SVN_NO_ERROR;
}