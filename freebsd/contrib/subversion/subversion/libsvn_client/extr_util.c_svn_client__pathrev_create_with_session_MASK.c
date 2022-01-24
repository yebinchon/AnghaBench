#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  url; int /*<<< orphan*/  rev; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_client__pathrev_t **pathrev_p,
                                        svn_ra_session_t *ra_session,
                                        svn_revnum_t rev,
                                        const char *url,
                                        apr_pool_t *result_pool)
{
  svn_client__pathrev_t *pathrev = FUNC2(result_pool, sizeof(*pathrev));

  FUNC1(FUNC4(url));

  FUNC0(FUNC5(ra_session, &pathrev->repos_root_url,
                                 result_pool));
  FUNC0(FUNC6(ra_session, &pathrev->repos_uuid, result_pool));
  pathrev->rev = rev;
  pathrev->url = FUNC3(result_pool, url);
  *pathrev_p = pathrev;
  return SVN_NO_ERROR;
}