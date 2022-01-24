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
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 

char *
FUNC4(const char *fspath1,
                                 const char *fspath2,
                                 apr_pool_t *result_pool)
{
  char *result;
  FUNC1(FUNC2(fspath1));
  FUNC1(FUNC2(fspath2));

  result = FUNC0(result_pool, "/",
                       FUNC3(fspath1 + 1,
                                                        fspath2 + 1,
                                                        result_pool),
                       SVN_VA_NULL);

  FUNC1(FUNC2(result));
  return result;
}