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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_reporter2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ; 

svn_error_t *FUNC4(svn_ra_session_t *session,
                            const svn_ra_reporter2_t **reporter,
                            void **report_baton,
                            svn_revnum_t revision,
                            const char *diff_target,
                            svn_boolean_t recurse,
                            svn_boolean_t ignore_ancestry,
                            const char *versus_url,
                            const svn_delta_editor_t *diff_editor,
                            void *diff_baton,
                            apr_pool_t *pool)
{
  FUNC0(FUNC1(diff_target)
                 || FUNC2(diff_target));
  return FUNC3(session, reporter, report_baton, revision,
                         diff_target, recurse, ignore_ancestry, TRUE,
                         versus_url, diff_editor, diff_baton, pool);
}