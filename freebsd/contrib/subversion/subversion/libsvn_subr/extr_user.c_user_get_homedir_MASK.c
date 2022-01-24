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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC4(apr_pool_t *pool)
{
  const char *username;
  char *homedir;

  if (FUNC0(&homedir, "HOME", pool) == APR_SUCCESS)
    return FUNC3(homedir, pool);

  username = FUNC2(pool);
  if (username != NULL &&
      FUNC1(&homedir, username, pool) == APR_SUCCESS)
    return FUNC3(homedir, pool);

  return NULL;
}