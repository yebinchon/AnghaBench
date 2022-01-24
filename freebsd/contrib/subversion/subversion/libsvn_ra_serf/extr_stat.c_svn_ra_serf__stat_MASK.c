#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_tristate_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_22__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_21__ {char* path; } ;
struct TYPE_23__ {scalar_t__ supports_deadprop_count; TYPE_1__ session_url; } ;
typedef  TYPE_3__ svn_ra_serf__session_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__handler_t ;
struct TYPE_24__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
struct TYPE_25__ {int /*<<< orphan*/  has_props; } ;
typedef  TYPE_5__ svn_dirent_t ;
struct fill_dirent_baton_t {scalar_t__* supports_deadprop_count; TYPE_5__* entry; int /*<<< orphan*/ * result_pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_DIRENT_ALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  fill_dirent_propfunc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 char* FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ **,TYPE_3__*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fill_dirent_baton_t*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (char const**,int /*<<< orphan*/ *,TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_tristate_false ; 
 scalar_t__ svn_tristate_unknown ; 

svn_error_t *
FUNC10(svn_ra_session_t *ra_session,
                  const char *relpath,
                  svn_revnum_t revision,
                  svn_dirent_t **dirent,
                  apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_error_t *err;
  struct fill_dirent_baton_t fdb;
  svn_tristate_t deadprop_count = svn_tristate_unknown;
  svn_ra_serf__handler_t *handler;
  const char *url;

  url = session->session_url.path;

  /* If we have a relative path, append it. */
  if (relpath)
    url = FUNC6(url, relpath, pool);

  /* If we were given a specific revision, get a URL that refers to that
     specific revision (rather than floating with HEAD).  */
  if (FUNC1(revision))
    {
      FUNC0(FUNC9(&url, NULL /* latest_revnum */,
                                          session,
                                          url, revision,
                                          pool, pool));
    }

  fdb.entry = FUNC3(pool);
  fdb.supports_deadprop_count = &deadprop_count;
  fdb.result_pool = pool;

  FUNC0(FUNC8(&handler, session, url,
                                               SVN_INVALID_REVNUM, "0",
                                               FUNC2(SVN_DIRENT_ALL,
                                                                session,
                                                                pool),
                                               fill_dirent_propfunc, &fdb, pool));

  err = FUNC7(handler, pool);

  if (err)
    {
      if (err->apr_err == SVN_ERR_FS_NOT_FOUND)
        {
          FUNC4(err);
          *dirent = NULL;
          return SVN_NO_ERROR;
        }
      else
        return FUNC5(err);
    }

  if (deadprop_count == svn_tristate_false
      && session->supports_deadprop_count == svn_tristate_unknown
      && !fdb.entry->has_props)
    {
      /* We have to requery as the server didn't give us the right
         information */
      session->supports_deadprop_count = svn_tristate_false;

      /* Run the same handler again */
      FUNC0(FUNC7(handler, pool));
    }

  if (deadprop_count != svn_tristate_unknown)
    session->supports_deadprop_count = deadprop_count;

  *dirent = fdb.entry;

  return SVN_NO_ERROR;
}