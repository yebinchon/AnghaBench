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
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_stringbuf_t **result,
                        const char *filename,
                        apr_pool_t *pool)
{
  if (filename[0] == '-' && filename[1] == '\0')
    return FUNC1
        (SVN_ERR_UNSUPPORTED_FEATURE, NULL,
         FUNC0("Reading from stdin is disallowed"));
  return FUNC2(result, filename, pool);
}