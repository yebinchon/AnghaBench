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
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  type_relpath ; 

char *
FUNC4(const char *relpath1,
                                 const char *relpath2,
                                 apr_pool_t *pool)
{
  FUNC1(FUNC3(relpath1));
  FUNC1(FUNC3(relpath2));

  return FUNC0(pool, relpath1,
                      FUNC2(type_relpath, relpath1,
                                                  relpath2, pool));
}