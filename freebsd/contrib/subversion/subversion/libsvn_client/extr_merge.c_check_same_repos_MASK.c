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
typedef  int /*<<< orphan*/  svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_CLIENT_UNRELATED_RESOURCES ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(const svn_client__pathrev_t *location1,
                 const char *path1,
                 const svn_client__pathrev_t *location2,
                 const char *path2,
                 svn_boolean_t strict_urls,
                 apr_pool_t *scratch_pool)
{
  if (! FUNC1(location1, location2, strict_urls))
    return FUNC2(SVN_ERR_CLIENT_UNRELATED_RESOURCES, NULL,
                             FUNC0("'%s' must be from the same repository as "
                               "'%s'"), path1, path2);
  return SVN_NO_ERROR;
}