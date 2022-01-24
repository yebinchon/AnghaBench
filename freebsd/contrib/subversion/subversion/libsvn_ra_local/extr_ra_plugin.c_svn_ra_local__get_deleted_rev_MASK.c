#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_7__ {int /*<<< orphan*/  fs; TYPE_1__* fs_path; } ;
typedef  TYPE_3__ svn_ra_local__session_baton_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_ra_session_t *session,
                              const char *path,
                              svn_revnum_t peg_revision,
                              svn_revnum_t end_revision,
                              svn_revnum_t *revision_deleted,
                              apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *abs_path = FUNC1(sess->fs_path->data, path, pool);

  FUNC0(FUNC2(sess->fs,
                                abs_path,
                                peg_revision,
                                end_revision,
                                revision_deleted,
                                pool));

  return SVN_NO_ERROR;
}