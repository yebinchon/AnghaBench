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
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 

const char *
FUNC4(const char *relpath,
                     apr_pool_t *pool)
{
  apr_size_t len = FUNC3(relpath);
  apr_size_t start;

  FUNC1(FUNC2(relpath));

  start = len;
  while (start > 0 && relpath[start - 1] != '/')
    --start;

  if (pool)
    return FUNC0(pool, relpath + start, len - start);
  else
    return relpath + start;
}