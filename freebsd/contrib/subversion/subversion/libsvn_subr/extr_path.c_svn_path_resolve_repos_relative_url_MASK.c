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
 int /*<<< orphan*/  SVN_ERR_BAD_URL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

svn_error_t *
FUNC4(const char **absolute_url,
                                    const char *relative_url,
                                    const char *repos_root_url,
                                    apr_pool_t *pool)
{
  if (! FUNC3(relative_url))
    return FUNC2(SVN_ERR_BAD_URL, NULL,
                             FUNC0("Improper relative URL '%s'"),
                             relative_url);

  /* No assumptions are made about the canonicalization of the input
   * arguments, it is presumed that the output will be canonicalized after
   * this function, which will remove any duplicate path separator.
   */
  *absolute_url = FUNC1(pool, repos_root_url, relative_url + 1,
                              SVN_VA_NULL);

  return SVN_NO_ERROR;
}