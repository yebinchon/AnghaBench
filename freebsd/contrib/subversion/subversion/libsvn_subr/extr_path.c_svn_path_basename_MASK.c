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
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 

char *
FUNC4(const char *path, apr_pool_t *pool)
{
  apr_size_t len = FUNC2(path);
  apr_size_t start;

  FUNC1(FUNC3(path, pool));

  if (len == 1 && path[0] == '/')
    start = 0;
  else
    {
      start = len;
      while (start > 0 && path[start - 1] != '/')
        --start;
    }

  return FUNC0(pool, path + start, len - start);
}