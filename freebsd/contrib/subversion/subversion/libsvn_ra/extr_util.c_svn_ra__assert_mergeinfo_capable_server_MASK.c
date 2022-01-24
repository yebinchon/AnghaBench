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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_MERGEINFO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_ra_session_t *ra_session,
                                        const char *path_or_url,
                                        apr_pool_t *pool)
{
  svn_boolean_t mergeinfo_capable;
  FUNC0(FUNC6(ra_session, &mergeinfo_capable,
                                SVN_RA_CAPABILITY_MERGEINFO, pool));
  if (! mergeinfo_capable)
    {
      path_or_url = FUNC2(path_or_url, ra_session, pool);
      return FUNC4(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                               FUNC1("Retrieval of mergeinfo unsupported by '%s'"),
                               FUNC5(path_or_url)
                                  ? path_or_url
                                  : FUNC3(path_or_url, pool));
    }
  return SVN_NO_ERROR;
}