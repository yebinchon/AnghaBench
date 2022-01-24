#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int SERF_AUTHN_ALL ; 
 int SERF_AUTHN_BASIC ; 
 int SERF_AUTHN_DIGEST ; 
 int SERF_AUTHN_NEGOTIATE ; 
 int SERF_AUTHN_NONE ; 
 int SERF_AUTHN_NTLM ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_HTTP_AUTH_TYPES ; 
 char const* SVN_CONFIG_SECTION_GLOBAL ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CONFIG_VALUE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char**) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_pool_t *pool, svn_config_t *config,
                     const char *server_group,
                     int *authn_types)
{
  const char *http_auth_types = NULL;
  *authn_types = SERF_AUTHN_NONE;

  FUNC4(config, &http_auth_types, SVN_CONFIG_SECTION_GLOBAL,
               SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, NULL);

  if (server_group)
    {
      FUNC4(config, &http_auth_types, server_group,
                     SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, http_auth_types);
    }

  if (http_auth_types)
    {
      char *token;
      char *auth_types_list = FUNC2(pool, FUNC3(http_auth_types) + 1);
      FUNC1(auth_types_list, http_auth_types);
      while ((token = FUNC6(";", &auth_types_list)) != NULL)
        {
          if (FUNC5("basic", token) == 0)
            *authn_types |= SERF_AUTHN_BASIC;
          else if (FUNC5("digest", token) == 0)
            *authn_types |= SERF_AUTHN_DIGEST;
          else if (FUNC5("ntlm", token) == 0)
            *authn_types |= SERF_AUTHN_NTLM;
          else if (FUNC5("negotiate", token) == 0)
            *authn_types |= SERF_AUTHN_NEGOTIATE;
          else
            return FUNC7(SVN_ERR_BAD_CONFIG_VALUE, NULL,
                                     FUNC0("Invalid config: unknown %s "
                                       "'%s'"),
                                     SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, token);
      }
    }
  else
    {
      /* Nothing specified by the user, so accept all types. */
      *authn_types = SERF_AUTHN_ALL;
    }

  return SVN_NO_ERROR;
}