#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_9__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
struct TYPE_10__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {char const* last_author; int /*<<< orphan*/  time; int /*<<< orphan*/  created_rev; int /*<<< orphan*/  has_props; int /*<<< orphan*/  size; int /*<<< orphan*/  kind; } ;
typedef  TYPE_3__ svn_dirent_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC11(svn_ra_session_t *session,
                                const char *path, svn_revnum_t rev,
                                svn_dirent_t **dirent, apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_ra_svn__list_t *list = NULL;
  svn_dirent_t *the_dirent;

  path = FUNC4(session, path, pool);
  FUNC1(FUNC9(conn, pool, path, rev));
  FUNC1(FUNC3(FUNC2(sess_baton, pool),
                                 FUNC0("'stat' not implemented")));
  FUNC1(FUNC8(conn, pool, "(?l)", &list));

  if (! list)
    {
      *dirent = NULL;
    }
  else
    {
      const char *kind, *cdate, *cauthor;
      svn_boolean_t has_props;
      svn_revnum_t crev;
      apr_uint64_t size;

      FUNC1(FUNC7(list, "wnbr(?c)(?c)",
                                      &kind, &size, &has_props,
                                      &crev, &cdate, &cauthor));

      the_dirent = FUNC5(pool);
      the_dirent->kind = FUNC6(kind);
      the_dirent->size = size;/* FIXME: svn_filesize_t */
      the_dirent->has_props = has_props;
      the_dirent->created_rev = crev;
      FUNC1(FUNC10(&the_dirent->time, cdate, pool));
      the_dirent->last_author = cauthor;

      *dirent = the_dirent;
    }

  return SVN_NO_ERROR;
}