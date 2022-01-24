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
 int /*<<< orphan*/  RA_SERF_DESCRIPTION_VER ; 
 int /*<<< orphan*/  SERF_MAJOR_VERSION ; 
 int /*<<< orphan*/  SERF_MINOR_VERSION ; 
 int /*<<< orphan*/  SERF_PATCH_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*) ; 

__attribute__((used)) static const char *
FUNC3(apr_pool_t *pool)
{
  int major, minor, patch;

  FUNC2(&major, &minor, &patch);
  return FUNC1(pool, FUNC0(RA_SERF_DESCRIPTION_VER),
                      major, minor, patch,
                      SERF_MAJOR_VERSION,
                      SERF_MINOR_VERSION,
                      SERF_PATCH_VERSION
                      );
}