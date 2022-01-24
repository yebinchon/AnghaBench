#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_7__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {TYPE_1__ session_url; } ;
typedef  TYPE_3__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_ra_reporter3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_ra_session_t *ra_session,
                       const svn_ra_reporter3_t **reporter,
                       void **report_baton,
                       const char *status_target,
                       svn_revnum_t revision,
                       svn_depth_t depth,
                       const svn_delta_editor_t *status_editor,
                       void *status_baton,
                       apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_pool_t *scratch_pool = FUNC2(pool);

  FUNC0(FUNC1(ra_session, reporter, report_baton,
                               revision,
                               session->session_url.path, NULL, status_target,
                               depth, FALSE, FALSE, FALSE,
                               status_editor, status_baton,
                               pool, scratch_pool));
  FUNC3(scratch_pool);
  return SVN_NO_ERROR;
}