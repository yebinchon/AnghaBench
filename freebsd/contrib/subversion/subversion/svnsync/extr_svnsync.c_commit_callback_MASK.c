#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_commit_info_t ;
struct TYPE_5__ {int /*<<< orphan*/  committed_rev; int /*<<< orphan*/  quiet; } ;
typedef  TYPE_2__ subcommand_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(const svn_commit_info_t *commit_info,
                void *baton,
                apr_pool_t *pool)
{
  subcommand_baton_t *sb = baton;

  if (! sb->quiet)
    {
      FUNC0(FUNC2(pool, FUNC1("Committed revision %ld.\n"),
                                 commit_info->revision));
    }

  sb->committed_rev = commit_info->revision;

  return SVN_NO_ERROR;
}