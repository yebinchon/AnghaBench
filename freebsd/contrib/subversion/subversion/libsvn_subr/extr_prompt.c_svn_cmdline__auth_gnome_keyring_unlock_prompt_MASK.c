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
typedef  int /*<<< orphan*/  svn_cmdline_prompt_baton2_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(char **keyring_password,
                                              const char *keyring_name,
                                              void *baton,
                                              apr_pool_t *pool)
{
  const char *password;
  const char *pass_prompt;
  svn_cmdline_prompt_baton2_t *pb = baton;

  pass_prompt = FUNC2(pool, FUNC1("Password for '%s' GNOME keyring: "),
                             keyring_name);
  FUNC0(FUNC4(&password, pass_prompt, TRUE, pb, pool));
  *keyring_password = FUNC3(pool, password);
  return SVN_NO_ERROR;
}