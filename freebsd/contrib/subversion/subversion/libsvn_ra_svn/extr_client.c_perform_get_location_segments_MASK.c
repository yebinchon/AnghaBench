#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_14__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_13__ {int /*<<< orphan*/  list; } ;
struct TYPE_15__ {scalar_t__ kind; TYPE_1__ u; } ;
typedef  TYPE_3__ svn_ra_svn__item_t ;
struct TYPE_16__ {TYPE_2__* priv; } ;
typedef  TYPE_4__ svn_ra_session_t ;
struct TYPE_17__ {char const* path; void* range_end; void* range_start; } ;
typedef  TYPE_5__ svn_location_segment_t ;
typedef  int /*<<< orphan*/  (* svn_location_segment_receiver_t ) (TYPE_5__*,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_CEASE_INVOCATION ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN_RA_SVN_LIST ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*,void**,void**,char const**) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char const*,void*,void*,void*) ; 
 char* FUNC18 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(svn_error_t **outer_error,
                              svn_ra_session_t *session,
                              const char *path,
                              svn_revnum_t peg_revision,
                              svn_revnum_t start_rev,
                              svn_revnum_t end_rev,
                              svn_location_segment_receiver_t receiver,
                              void *receiver_baton,
                              apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_boolean_t is_done;
  apr_pool_t *iterpool = FUNC12(pool);

  /* Transmit the parameters. */
  FUNC1(FUNC17(conn, pool, "w(c(?r)(?r)(?r))",
                                  "get-location-segments",
                                  path, peg_revision, start_rev, end_rev));

  /* Servers before 1.5 don't support this command. Check for this here. */
  FUNC1(FUNC6(FUNC5(sess_baton, pool),
                                 FUNC0("'get-location-segments'"
                                    " not implemented")));

  /* Parse the response. */
  is_done = FALSE;
  while (!is_done)
    {
      svn_revnum_t range_start, range_end;
      svn_ra_svn__item_t *item;
      const char *ret_path;

      FUNC11(iterpool);
      FUNC1(FUNC16(conn, iterpool, &item));
      if (FUNC7(item))
        is_done = 1;
      else if (item->kind != SVN_RA_SVN_LIST)
        return FUNC8(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                FUNC3("Location segment entry not a list"));
      else
        {
          svn_location_segment_t *segment = FUNC4(iterpool,
                                                        sizeof(*segment));
          FUNC1(FUNC14(&item->u.list, "rr(?c)",
                                          &range_start, &range_end, &ret_path));
          if (! (FUNC2(range_start)
                 && FUNC2(range_end)))
            return FUNC8(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                    FUNC3("Expected valid revision range"));
          if (ret_path)
            ret_path = FUNC18(ret_path, iterpool);
          segment->path = ret_path;
          segment->range_start = range_start;
          segment->range_end = range_end;

          if (!*outer_error)
            {
              svn_error_t *err = FUNC10(receiver(segment, receiver_baton,
                                                          iterpool));

              if (FUNC9(err, SVN_ERR_CEASE_INVOCATION))
                *outer_error = err;
              else
                FUNC1(err);
            }
        }
    }
  FUNC13(iterpool);

  /* Read the response. This is so the server would have a chance to
   * report an error. */
  FUNC1(FUNC15(conn, pool, ""));

  return SVN_NO_ERROR;
}