#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  ascii_cert; } ;
typedef  TYPE_2__ svn_auth_ssl_server_cert_info_t ;
struct TYPE_10__ {int /*<<< orphan*/  may_save; } ;
typedef  TYPE_3__ svn_auth_cred_ssl_server_trust_t ;
typedef  int apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_AUTH_CRED_SSL_SERVER_TRUST ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_DIR ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_SSL_SERVER_FAILURES ; 
 int /*<<< orphan*/  SVN_CONFIG_AUTHN_ASCII_CERT_KEY ; 
 int /*<<< orphan*/  SVN_CONFIG_AUTHN_FAILURES_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(void **credentials,
                                        void **iter_baton,
                                        void *provider_baton,
                                        apr_hash_t *parameters,
                                        const char *realmstring,
                                        apr_pool_t *pool)
{
  apr_uint32_t *failures = FUNC5(parameters,
                                         SVN_AUTH_PARAM_SSL_SERVER_FAILURES);
  const svn_auth_ssl_server_cert_info_t *cert_info =
    FUNC5(parameters, SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO);
  apr_hash_t *creds_hash = NULL;
  const char *config_dir;
  svn_error_t *error = SVN_NO_ERROR;

  *credentials = NULL;
  *iter_baton = NULL;

  /* Check if this is a permanently accepted certificate */
  config_dir = FUNC5(parameters, SVN_AUTH_PARAM_CONFIG_DIR);
  error =
    FUNC2(&creds_hash, SVN_AUTH_CRED_SSL_SERVER_TRUST,
                              realmstring, config_dir, pool);
  FUNC4(error);
  if (! error && creds_hash)
    {
      svn_string_t *trusted_cert, *this_cert, *failstr;
      apr_uint32_t last_failures = 0;

      trusted_cert = FUNC5(creds_hash, SVN_CONFIG_AUTHN_ASCII_CERT_KEY);
      this_cert = FUNC7(cert_info->ascii_cert, pool);
      failstr = FUNC5(creds_hash, SVN_CONFIG_AUTHN_FAILURES_KEY);

      if (failstr)
        FUNC0(FUNC3(&last_failures, failstr->data));

      /* If the cert is trusted and there are no new failures, we
       * accept it by clearing all failures. */
      if (trusted_cert &&
          FUNC6(this_cert, trusted_cert) &&
          (*failures & ~last_failures) == 0)
        {
          *failures = 0;
        }
    }

  /* If all failures are cleared now, we return the creds */
  if (! *failures)
    {
      svn_auth_cred_ssl_server_trust_t *creds =
        FUNC1(pool, sizeof(*creds));
      creds->may_save = FALSE; /* No need to save it again... */
      *credentials = creds;
    }

  return SVN_NO_ERROR;
}