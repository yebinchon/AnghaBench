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
 int /*<<< orphan*/  ADM_LOCK ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char const* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC2(const char *local_dir_abspath,
                    apr_pool_t *result_pool)
{
  return FUNC0(result_pool,
                              local_dir_abspath,
                              FUNC1(result_pool),
                              ADM_LOCK,
                              SVN_VA_NULL);
}