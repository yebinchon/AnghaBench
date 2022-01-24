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
struct TYPE_8__ {char* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_9__ {int /*<<< orphan*/  may_save; void* password; void* username; } ;
typedef  TYPE_2__ svn_auth_cred_simple_t ;
struct TYPE_10__ {int /*<<< orphan*/  prompt_baton; int /*<<< orphan*/  (* prompt_func ) (TYPE_2__**,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ simple_prompt_provider_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_AUTH_CRED_SIMPLE ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_DIR ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_DEFAULT_PASSWORD ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_DEFAULT_USERNAME ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_SERVER_GROUP ; 
 int /*<<< orphan*/  SVN_CONFIG_AUTHN_USERNAME_KEY ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_auth_cred_simple_t **cred_p,
                        simple_prompt_provider_baton_t *pb,
                        apr_hash_t *parameters,
                        const char *realmstring,
                        svn_boolean_t first_time,
                        svn_boolean_t may_save,
                        apr_pool_t *pool)
{
  const char *default_username = NULL;
  const char *default_password = NULL;

  *cred_p = NULL;

  /* If we're allowed to check for default usernames and passwords, do
     so. */
  if (first_time)
    {
      default_username = FUNC7(parameters,
                                       SVN_AUTH_PARAM_DEFAULT_USERNAME);

      /* No default username?  Try the auth cache. */
      if (! default_username)
        {
          const char *config_dir = FUNC7(parameters,
                                                 SVN_AUTH_PARAM_CONFIG_DIR);
          apr_hash_t *creds_hash = NULL;
          svn_string_t *str;
          svn_error_t *err;

          err = FUNC5(&creds_hash, SVN_AUTH_CRED_SIMPLE,
                                          realmstring, config_dir, pool);
          FUNC6(err);
          if (! err && creds_hash)
            {
              str = FUNC7(creds_hash, SVN_CONFIG_AUTHN_USERNAME_KEY);
              if (str && str->data)
                default_username = str->data;
            }
        }

      /* Still no default username?  Try the 'servers' file. */
      if (! default_username)
        {
          svn_config_t *cfg = FUNC7(parameters,
                                            SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS);
          const char *server_group = FUNC7(parameters,
                                                   SVN_AUTH_PARAM_SERVER_GROUP);
          default_username =
            FUNC4(cfg, server_group,
                                          SVN_CONFIG_OPTION_USERNAME,
                                          NULL);
        }

      /* Still no default username?  Try the UID. */
      if (! default_username)
        default_username = FUNC8(pool);

      default_password = FUNC7(parameters,
                                       SVN_AUTH_PARAM_DEFAULT_PASSWORD);
    }

  /* If we have defaults, just build the cred here and return it.
   *
   * ### I do wonder why this is here instead of in a separate
   * ### 'defaults' provider that would run before the prompt
   * ### provider... Hmmm.
   */
  if (default_username && default_password)
    {
      *cred_p = FUNC1(pool, sizeof(**cred_p));
      (*cred_p)->username = FUNC2(pool, default_username);
      (*cred_p)->password = FUNC2(pool, default_password);
      (*cred_p)->may_save = TRUE;
    }
  else
    {
      FUNC0(pb->prompt_func(cred_p, pb->prompt_baton, realmstring,
                              default_username, may_save, pool));
    }

  return SVN_NO_ERROR;
}