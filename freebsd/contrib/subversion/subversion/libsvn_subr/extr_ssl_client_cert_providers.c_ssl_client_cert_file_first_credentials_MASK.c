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
typedef  int /*<<< orphan*/  svn_config_t ;
struct TYPE_3__ {char const* cert_file; int /*<<< orphan*/  may_save; } ;
typedef  TYPE_1__ svn_auth_cred_ssl_client_cert_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_SERVER_GROUP ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_SSL_CLIENT_CERT_FILE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void **credentials_p,
                                       void **iter_baton,
                                       void *provider_baton,
                                       apr_hash_t *parameters,
                                       const char *realmstring,
                                       apr_pool_t *pool)
{
  svn_config_t *cfg = FUNC2(parameters,
                                    SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS);
  const char *server_group = FUNC2(parameters,
                                           SVN_AUTH_PARAM_SERVER_GROUP);
  const char *cert_file;

  cert_file =
    FUNC1(cfg, server_group,
                                  SVN_CONFIG_OPTION_SSL_CLIENT_CERT_FILE,
                                  NULL);

  if (cert_file != NULL)
    {
      svn_auth_cred_ssl_client_cert_t *cred =
        FUNC0(pool, sizeof(*cred));

      cred->cert_file = cert_file;
      cred->may_save = FALSE;
      *credentials_p = cred;
    }
  else
    {
      *credentials_p = NULL;
    }

  *iter_baton = NULL;
  return SVN_NO_ERROR;
}