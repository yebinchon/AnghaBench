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
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char **fs_path_p,
            svn_ra_session_t *session,
            const char *rel_path,
            apr_pool_t *pool)
{
  const char *url, *fs_path;

  FUNC0(FUNC3(session, &url, pool));
  FUNC0(FUNC2(session, &fs_path, url, pool));
  *fs_path_p = FUNC1(FUNC4(fs_path,
                                                         rel_path, pool),
                                        pool);
  return SVN_NO_ERROR;
}