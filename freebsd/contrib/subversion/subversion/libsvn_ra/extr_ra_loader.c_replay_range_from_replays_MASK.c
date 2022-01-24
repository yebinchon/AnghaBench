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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  (* svn_ra_replay_revstart_callback_t ) (scalar_t__,void*,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  (* svn_ra_replay_revfinish_callback_t ) (scalar_t__,void*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_ra_session_t *session,
                          svn_revnum_t start_revision,
                          svn_revnum_t end_revision,
                          svn_revnum_t low_water_mark,
                          svn_boolean_t text_deltas,
                          svn_ra_replay_revstart_callback_t revstart_func,
                          svn_ra_replay_revfinish_callback_t revfinish_func,
                          void *replay_baton,
                          apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC2(scratch_pool);
  svn_revnum_t rev;

  for (rev = start_revision ; rev <= end_revision ; rev++)
    {
      const svn_delta_editor_t *editor;
      void *edit_baton;
      apr_hash_t *rev_props;

      FUNC1(iterpool);

      FUNC0(FUNC5(session, rev, &rev_props, iterpool));

      FUNC0(revstart_func(rev, replay_baton,
                            &editor, &edit_baton,
                            rev_props,
                            iterpool));
      FUNC0(FUNC4(session, rev, low_water_mark,
                            text_deltas, editor, edit_baton,
                            iterpool));
      FUNC0(revfinish_func(rev, replay_baton,
                             editor, edit_baton,
                             rev_props,
                             iterpool));
    }
  FUNC3(iterpool);

  return SVN_NO_ERROR;
}