#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  repos_url; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  path_in_repos; int /*<<< orphan*/  peg_rev; int /*<<< orphan*/  node_kind; } ;
typedef  TYPE_1__ svn_wc_conflict_version_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC__CONFLICT_SRC_SUBVERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_skel_t *skel,
                           const svn_wc_conflict_version_t *location,
                           svn_boolean_t allow_NULL,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_skel_t *loc;
  FUNC0(location || allow_NULL);

  if (!location)
    {
      FUNC4(FUNC3(result_pool), skel);
      return SVN_NO_ERROR;
    }

  /* ("subversion" repos_root_url repos_uuid repos_relpath rev kind) */
  loc = FUNC3(result_pool);

  FUNC6(FUNC2(location->node_kind),
                        loc, result_pool);

  FUNC5(location->peg_rev, loc, result_pool);

  FUNC6(FUNC1(result_pool, location->path_in_repos), loc,
                        result_pool);

  if (!location->repos_uuid) /* Can theoretically be NULL */
    FUNC4(FUNC3(result_pool), loc);
  else
    FUNC6(location->repos_uuid, loc, result_pool);

  FUNC6(FUNC1(result_pool, location->repos_url), loc,
                        result_pool);

  FUNC6(SVN_WC__CONFLICT_SRC_SUBVERSION, loc, result_pool);

  FUNC4(loc, skel);
  return SVN_NO_ERROR;
}