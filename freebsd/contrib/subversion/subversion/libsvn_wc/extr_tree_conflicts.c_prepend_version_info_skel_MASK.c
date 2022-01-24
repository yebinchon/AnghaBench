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
struct TYPE_3__ {char* path_in_repos; char* repos_url; int /*<<< orphan*/  peg_rev; int /*<<< orphan*/  node_kind; } ;
typedef  TYPE_1__ svn_wc_conflict_version_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_kind_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_skel_t *parent_skel,
                          const svn_wc_conflict_version_t *version_info,
                          apr_pool_t *pool)
{
  svn_skel_t *skel = FUNC4(pool);

  /* node_kind */
  FUNC3(skel, node_kind_map, version_info->node_kind, pool);

  /* path_in_repos */
  FUNC5(FUNC6(version_info->path_in_repos
                                       ? version_info->path_in_repos
                                       : "", pool), skel);

  /* peg_rev */
  FUNC5(FUNC6(FUNC1(pool, "%ld",
                                                    version_info->peg_rev),
                                       pool), skel);

  /* repos_url */
  FUNC5(FUNC6(version_info->repos_url
                                       ? version_info->repos_url
                                       : "", pool), skel);

  FUNC5(FUNC6("version", pool), skel);

  FUNC0(FUNC2(skel));

  FUNC5(skel, parent_skel);

  return SVN_NO_ERROR;
}