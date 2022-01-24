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
 int /*<<< orphan*/  SVN_BUILD_TARGET ; 
 int /*<<< orphan*/  SVN_VER_NUMBER ; 
 char const* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 

__attribute__((used)) static const char *
FUNC2(apr_pool_t *pool)
{
  int major, minor, patch;
  FUNC1(&major, &minor, &patch);

  return FUNC0(pool, "SVN/%s (%s) serf/%d.%d.%d",
                      SVN_VER_NUMBER, SVN_BUILD_TARGET,
                      major, minor, patch);
}