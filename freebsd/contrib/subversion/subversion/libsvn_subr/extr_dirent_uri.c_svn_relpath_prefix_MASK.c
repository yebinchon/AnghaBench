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
 char const* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

const char *
FUNC3(const char *relpath,
                   int max_components,
                   apr_pool_t *result_pool)
{
  const char *end;
  FUNC1(FUNC2(relpath));

  if (max_components <= 0)
    return "";

  for (end = relpath; *end; end++)
    {
      if (*end == '/')
        {
          if (!--max_components)
            break;
        }
    }

  return FUNC0(result_pool, relpath, end-relpath);
}