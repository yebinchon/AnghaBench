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
struct TYPE_3__ {char* author; scalar_t__ post_commit_err; int /*<<< orphan*/  date; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_commit_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 

__attribute__((used)) static svn_error_t *
FUNC3(const svn_commit_info_t *commit_info,
                void *baton,
                apr_pool_t *pool)
{
  FUNC0(FUNC2(pool, "r%ld committed by %s at %s\n",
                             commit_info->revision,
                             (commit_info->author
                              ? commit_info->author : "(no author)"),
                             commit_info->date));

  /* Writing to stdout, as there maybe systems that consider the
   * presence of stderr as an indication of commit failure.
   * OTOH, this is only of informational nature to the user as
   * the commit has succeeded. */
  if (commit_info->post_commit_err)
    FUNC0(FUNC2(pool, FUNC1("\nWarning: %s\n"),
                               commit_info->post_commit_err));

  return SVN_NO_ERROR;
}