#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cmdline_prompt_baton2_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  may_save; int /*<<< orphan*/  password; int /*<<< orphan*/  username; } ;
typedef  TYPE_1__ svn_auth_cred_simple_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char const* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_auth_cred_simple_t **cred_p,
                               void *baton,
                               const char *realm,
                               const char *username,
                               svn_boolean_t may_save,
                               apr_pool_t *pool)
{
  svn_auth_cred_simple_t *ret = FUNC2(pool, sizeof(*ret));
  const char *pass_prompt;
  svn_cmdline_prompt_baton2_t *pb = baton;

  FUNC0(FUNC5(realm, pool));

  if (username)
    ret->username = FUNC4(pool, username);
  else
    FUNC0(FUNC6(&(ret->username), FUNC1("Username: "), FALSE, pb, pool));

  pass_prompt = FUNC3(pool, FUNC1("Password for '%s': "), ret->username);
  FUNC0(FUNC6(&(ret->password), pass_prompt, TRUE, pb, pool));
  ret->may_save = may_save;
  *cred_p = ret;
  return SVN_NO_ERROR;
}