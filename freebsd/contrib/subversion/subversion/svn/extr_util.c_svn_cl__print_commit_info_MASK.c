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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int revision; scalar_t__ post_commit_err; } ;
typedef  TYPE_1__ svn_commit_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 

svn_error_t *
FUNC5(const svn_commit_info_t *commit_info,
                          void *baton,
                          apr_pool_t *pool)
{
  /* Be very careful with returning errors from this callback as those
     will be returned as errors from editor->close_edit(...), which may
     cause callers to assume that the commit itself failed.

     See log message of r1659867 and the svn_ra_get_commit_editor3
     documentation for details on error scenarios. */

  if (FUNC1(commit_info->revision))
    FUNC0(FUNC4(pool, FUNC2("Committed revision %ld%s.\n"),
                               commit_info->revision,
                               commit_info->revision == 42 &&
                               FUNC3("SVN_I_LOVE_PANGALACTIC_GARGLE_BLASTERS")
                                 ?  FUNC2(" (the answer to life, the universe, "
                                      "and everything)")
                                 : ""));

  /* Writing to stdout, as there maybe systems that consider the
   * presence of stderr as an indication of commit failure.
   * OTOH, this is only of informational nature to the user as
   * the commit has succeeded. */
  if (commit_info->post_commit_err)
    FUNC0(FUNC4(pool, FUNC2("\nWarning: %s\n"),
                               commit_info->post_commit_err));

  return SVN_NO_ERROR;
}