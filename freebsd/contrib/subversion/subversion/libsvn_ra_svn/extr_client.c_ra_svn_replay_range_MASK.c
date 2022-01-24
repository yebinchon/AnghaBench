#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_6__ {int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  (* svn_ra_replay_revstart_callback_t ) (scalar_t__,void*,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  (* svn_ra_replay_revfinish_callback_t ) (scalar_t__,void*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_EDIT_ABORTED ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC19(svn_ra_session_t *session,
                    svn_revnum_t start_revision,
                    svn_revnum_t end_revision,
                    svn_revnum_t low_water_mark,
                    svn_boolean_t send_deltas,
                    svn_ra_replay_revstart_callback_t revstart_func,
                    svn_ra_replay_revfinish_callback_t revfinish_func,
                    void *replay_baton,
                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  apr_pool_t *iterpool;
  svn_revnum_t rev;
  svn_boolean_t drive_aborted = FALSE;

  /* Complex EDITOR callbacks may rely on client and server parent path
     being in sync. */
  FUNC1(FUNC3(session, pool));
  FUNC1(FUNC17(sess->conn, pool,
                                             start_revision, end_revision,
                                             low_water_mark, send_deltas));

  FUNC1(FUNC5(FUNC4(sess, pool),
                                 FUNC0("Server doesn't support the "
                                    "replay-range command")));

  iterpool = FUNC11(pool);
  for (rev = start_revision; rev <= end_revision; rev++)
    {
      const svn_delta_editor_t *editor;
      void *edit_baton;
      apr_hash_t *rev_props;
      const char *word;
      svn_ra_svn__list_t *list;

      FUNC10(iterpool);

      FUNC1(FUNC16(sess->conn, iterpool,
                                     "wl", &word, &list));

      if (FUNC6(word, "revprops") != 0)
        {
          if (FUNC6(word, "failure") == 0)
            FUNC1(FUNC13(list));

          return FUNC8(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                   FUNC2("Expected 'revprops', found '%s'"),
                                   word);
        }

      FUNC1(FUNC14(list, iterpool, &rev_props));

      FUNC1(revstart_func(rev, replay_baton,
                            &editor, &edit_baton,
                            rev_props,
                            iterpool));
      FUNC1(FUNC18(sess->conn, iterpool,
                                       editor, edit_baton,
                                       &drive_aborted, TRUE));
      /* If drive_editor2() aborted the commit, do NOT try to call
         revfinish_func and commit the transaction! */
      if (drive_aborted) {
        FUNC12(iterpool);
        return FUNC7(SVN_ERR_RA_SVN_EDIT_ABORTED, NULL,
                                FUNC2("Error while replaying commit"));
      }
      FUNC1(revfinish_func(rev, replay_baton,
                             editor, edit_baton,
                             rev_props,
                             iterpool));
    }
  FUNC12(iterpool);

  return FUNC9(FUNC15(sess->conn, pool, ""));
}