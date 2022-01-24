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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 

void
FUNC3(const char *path,
               const char **dirpath,
               const char **base_name,
               apr_pool_t *pool)
{
  FUNC0(dirpath != base_name);

  if (dirpath)
    *dirpath = FUNC2(path, pool);

  if (base_name)
    *base_name = FUNC1(path, pool);
}