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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(const char **token,
                                 svn_fs_t *fs,
                                 apr_pool_t *pool)
{
  /* Notice that 'fs' is currently unused.  But perhaps someday, we'll
     want to use the fs UUID + some incremented number?  For now, we
     generate a URI that matches the DAV RFC.  We could change this to
     some other URI scheme someday, if we wish. */
  *token = FUNC0(pool, "opaquelocktoken:",
                       FUNC1(pool), SVN_VA_NULL);
  return SVN_NO_ERROR;
}