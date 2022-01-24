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
 int /*<<< orphan*/  SVN_WC__ADM_NONEXISTENT_PATH ; 
 char const* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC1(const char *wcroot_abspath, apr_pool_t *scratch_pool)
{
  return FUNC0(wcroot_abspath, SVN_WC__ADM_NONEXISTENT_PATH,
                           scratch_pool);
}