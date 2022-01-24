#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_14__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_replay_revstart_callback_t ;
typedef  int /*<<< orphan*/  svn_ra_replay_revfinish_callback_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {TYPE_3__* (* replay_range ) (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*) ; 

svn_error_t *
FUNC6(svn_ra_session_t *session,
                    svn_revnum_t start_revision,
                    svn_revnum_t end_revision,
                    svn_revnum_t low_water_mark,
                    svn_boolean_t text_deltas,
                    svn_ra_replay_revstart_callback_t revstart_func,
                    svn_ra_replay_revfinish_callback_t revfinish_func,
                    void *replay_baton,
                    apr_pool_t *pool)
{
  svn_error_t *err;

  FUNC0(FUNC1(start_revision)
                 && FUNC1(end_revision)
                 && start_revision <= end_revision
                 && FUNC1(low_water_mark));

  err =
    session->vtable->replay_range(session, start_revision, end_revision,
                                  low_water_mark, text_deltas,
                                  revstart_func, revfinish_func,
                                  replay_baton, pool);

  if (!err || (err && (err->apr_err != SVN_ERR_RA_NOT_IMPLEMENTED)))
    return FUNC5(err);

  FUNC4(err);
  return FUNC5(FUNC2(session, start_revision,
                                                   end_revision,
                                                   low_water_mark,
                                                   text_deltas,
                                                   revstart_func,
                                                   revfinish_func,
                                                   replay_baton, pool));
}