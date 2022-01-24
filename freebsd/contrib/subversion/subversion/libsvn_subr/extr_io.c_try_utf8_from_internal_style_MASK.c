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
 int /*<<< orphan*/ * FUNC0 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(const char *path, apr_pool_t *pool)
{
  svn_error_t *error;
  const char *path_utf8;

  /* Special case. */
  if (path == NULL)
    return "(NULL)";

  /* (try to) convert PATH to UTF-8. If that fails, continue with the plain
   * PATH because it is the best we have. It may actually be UTF-8 already.
   */
  error = FUNC0(&path_utf8, path, pool);
  if (error)
    {
      /* fallback to best representation we have */

      FUNC2(error);
      path_utf8 = path;
    }

  /* Toggle (back-)slashes etc. as necessary.
   */
  return FUNC1(path_utf8, pool);
}