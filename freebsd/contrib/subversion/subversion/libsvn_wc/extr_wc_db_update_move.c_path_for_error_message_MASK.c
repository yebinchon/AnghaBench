#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC1 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC2(const svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       apr_pool_t *result_pool)
{
  const char *local_abspath
    = FUNC0(wcroot->abspath, local_relpath, result_pool);

  return FUNC1(local_abspath, result_pool);
}