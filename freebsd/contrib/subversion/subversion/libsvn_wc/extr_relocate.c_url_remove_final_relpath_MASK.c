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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static const char *
FUNC6(const char *url,
                         const char *relpath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  char *result = FUNC1(result_pool, url);
  char *result_end;
  const char *relpath_end;

  FUNC0(FUNC3(url));
  FUNC0(FUNC5(relpath));

  if (relpath[0] == 0)
    return result;

  relpath = FUNC4(relpath, scratch_pool);
  result_end = result + FUNC2(result) - 1;
  relpath_end = relpath + FUNC2(relpath) - 1;

  while (relpath_end >= relpath)
    {
      if (*result_end != *relpath_end)
        return NULL;

      relpath_end--;
      result_end--;
    }

  if (*result_end != '/')
    return NULL;

  *result_end = 0;

  return result;
}