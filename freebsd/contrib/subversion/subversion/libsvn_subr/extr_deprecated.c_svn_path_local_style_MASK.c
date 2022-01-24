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
 char const* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char const* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 

const char *
FUNC3(const char *path, apr_pool_t *pool)
{
  if (FUNC2(path))
    return FUNC0(pool, path);
  else
    return FUNC1(path, pool);
}