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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 

const char *
FUNC7(const char *path,
                         apr_pool_t *pool)
{
  const char *candidate = path;
  const char *decoded;
  svn_error_t *err;

  while (1)
    {
      /* Try to decode the path, so we don't fail if it contains characters
         that aren't supported by the OS filesystem.  The subversion fs
         isn't restricted by the OS filesystem character set. */
      err = FUNC5(&decoded, candidate, pool);
      if (!err && FUNC0(candidate, pool))
        break;
      FUNC4(err);

      if (FUNC6(candidate) ||
          FUNC3(candidate, FUNC1(candidate)))
        return NULL;

      candidate = FUNC2(candidate, pool);
    }

  return candidate;
}