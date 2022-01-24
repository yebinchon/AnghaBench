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
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  subcommand_baton_t ;
struct TYPE_4__ {int /*<<< orphan*/  extra_to_session; int /*<<< orphan*/  to_root; int /*<<< orphan*/ * sb; int /*<<< orphan*/ * to_session; int /*<<< orphan*/ * from_session; } ;
typedef  TYPE_1__ replay_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(replay_baton_t **baton_p,
                  svn_ra_session_t *from_session,
                  svn_ra_session_t *to_session,
                  subcommand_baton_t *sb, apr_pool_t *pool)
{
  replay_baton_t *rb = FUNC1(pool, sizeof(*rb));
  rb->from_session = from_session;
  rb->to_session = to_session;
  rb->sb = sb;

  FUNC0(FUNC3(to_session, &rb->to_root, pool));

#ifdef ENABLE_EV2_SHIMS
  /* Open up the extra baton.  Only needed for Ev2 shims. */
  SVN_ERR(open_target_session(&rb->extra_to_session, sb, pool));
#endif

  *baton_p = rb;
  return SVN_NO_ERROR;
}