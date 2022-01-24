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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 

const char *
FUNC4(const char *fspath,
                     apr_pool_t *pool)
{
  const char *result;
  FUNC0(FUNC2(fspath));

  result = FUNC3(fspath + 1, pool);

  FUNC0(FUNC1(result, '/') == NULL);
  return result;
}