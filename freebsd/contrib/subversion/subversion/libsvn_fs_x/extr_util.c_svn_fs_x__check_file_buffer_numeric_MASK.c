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
typedef  int apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_VERSION_FILE_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const,char const*) ; 

svn_error_t *
FUNC4(const char *buf,
                                    apr_off_t offset,
                                    const char *path,
                                    const char *title,
                                    apr_pool_t *scratch_pool)
{
  const char *p;

  for (p = buf + offset; *p; p++)
    if (!FUNC1(*p))
      return FUNC3(SVN_ERR_BAD_VERSION_FILE_FORMAT, NULL,
        FUNC0("%s file '%s' contains unexpected non-digit '%c' within '%s'"),
        title, FUNC2(path, scratch_pool), *p, buf);

  return SVN_NO_ERROR;
}