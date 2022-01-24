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
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(const char **old_session_url,
                                  svn_ra_session_t *ra_session,
                                  const char *session_url,
                                  apr_pool_t *pool)
{
  FUNC0(FUNC3(ra_session, old_session_url, pool));
  if (! session_url)
    FUNC0(FUNC2(ra_session, &session_url, pool));
  if (FUNC1(*old_session_url, session_url) != 0)
    FUNC0(FUNC4(ra_session, session_url, pool));
  return SVN_NO_ERROR;
}