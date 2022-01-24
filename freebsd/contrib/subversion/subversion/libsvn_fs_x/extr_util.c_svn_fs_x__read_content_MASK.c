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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int SVN_FS_X__RECOVERABLE_RETRY_COUNT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_stringbuf_t **content,
                       const char *fname,
                       apr_pool_t *result_pool)
{
  int i;
  *content = NULL;

  for (i = 0; !*content && (i < SVN_FS_X__RECOVERABLE_RETRY_COUNT); ++i)
    FUNC0(FUNC4(content, NULL,
                           fname, i + 1 < SVN_FS_X__RECOVERABLE_RETRY_COUNT,
                           result_pool));

  if (!*content)
    return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                             FUNC1("Can't read '%s'"),
                             FUNC2(fname, result_pool));

  return SVN_NO_ERROR;
}