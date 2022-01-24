#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_5__ {char const* username; int may_save; } ;
typedef  TYPE_2__ svn_auth_cred_simple_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_AUTH_CRED_USERNAME ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_DIR ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_DEFAULT_USERNAME ; 
 int /*<<< orphan*/  SVN_CONFIG_AUTHN_USERNAME_KEY ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void **credentials,
                     void **iter_baton,
                     void *provider_baton,
                     apr_hash_t *parameters,
                     const char *realmstring,
                     apr_pool_t *pool)
{
  const char *config_dir = FUNC3(parameters,
                                         SVN_AUTH_PARAM_CONFIG_DIR);
  const char *username = FUNC3(parameters,
                                       SVN_AUTH_PARAM_DEFAULT_USERNAME);
  svn_boolean_t may_save = !! username;
  svn_error_t *err;

  /* If we don't have a usename yet, try the auth cache */
  if (! username)
    {
      apr_hash_t *creds_hash = NULL;

      /* Try to load credentials from a file on disk, based on the
         realmstring.  Don't throw an error, though: if something went
         wrong reading the file, no big deal.  What really matters is that
         we failed to get the creds, so allow the auth system to try the
         next provider. */
      err = FUNC1(&creds_hash, SVN_AUTH_CRED_USERNAME,
                                      realmstring, config_dir, pool);
      FUNC2(err);
      if (! err && creds_hash)
        {
          svn_string_t *str = FUNC3(creds_hash,
                                            SVN_CONFIG_AUTHN_USERNAME_KEY);
          if (str && str->data)
            username = str->data;
        }
    }

  /* If that failed, ask the OS for the username */
  if (! username)
    username = FUNC4(pool);

  if (username)
    {
      svn_auth_cred_simple_t *creds = FUNC0(pool, sizeof(*creds));
      creds->username = username;
      creds->may_save = may_save;
      *credentials = creds;
    }
  else
    *credentials = NULL;

  *iter_baton = NULL;

  return SVN_NO_ERROR;
}