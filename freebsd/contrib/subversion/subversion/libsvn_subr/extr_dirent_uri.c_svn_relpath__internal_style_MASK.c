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
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const char *
FUNC2(const char *relpath,
                            apr_pool_t *pool)
{
  return FUNC1(FUNC0(relpath, pool), pool);
}