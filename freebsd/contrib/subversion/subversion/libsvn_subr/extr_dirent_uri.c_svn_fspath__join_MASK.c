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
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,char const*,char const*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

char *
FUNC5(const char *fspath,
                 const char *relpath,
                 apr_pool_t *result_pool)
{
  char *result;
  FUNC2(FUNC3(fspath));
  FUNC2(FUNC4(relpath));

  if (relpath[0] == '\0')
    result = FUNC1(result_pool, fspath);
  else if (fspath[1] == '\0')
    result = FUNC0(result_pool, "/", relpath, SVN_VA_NULL);
  else
    result = FUNC0(result_pool, fspath, "/", relpath, SVN_VA_NULL);

  FUNC2(FUNC3(result));
  return result;
}