#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  username; int /*<<< orphan*/  may_save; } ;
typedef  TYPE_1__ svn_auth_cred_simple_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  SVN_AUTH_CRED_USERNAME ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_DIR ; 
 int /*<<< orphan*/  SVN_CONFIG_AUTHN_USERNAME_KEY ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_boolean_t *saved,
                    void *credentials,
                    void *provider_baton,
                    apr_hash_t *parameters,
                    const char *realmstring,
                    apr_pool_t *pool)
{
  svn_auth_cred_simple_t *creds = credentials;
  apr_hash_t *creds_hash = NULL;
  const char *config_dir;
  svn_error_t *err;

  *saved = FALSE;

  if (! creds->may_save)
    return SVN_NO_ERROR;

  config_dir = FUNC3(parameters, SVN_AUTH_PARAM_CONFIG_DIR);

  /* Put the credentials in a hash and save it to disk */
  creds_hash = FUNC0(pool);
  FUNC4(creds_hash, SVN_CONFIG_AUTHN_USERNAME_KEY,
                FUNC5(creds->username, pool));
  err = FUNC1(creds_hash, SVN_AUTH_CRED_USERNAME,
                                   realmstring, config_dir, pool);
  FUNC2(err);
  *saved = ! err;

  return SVN_NO_ERROR;
}