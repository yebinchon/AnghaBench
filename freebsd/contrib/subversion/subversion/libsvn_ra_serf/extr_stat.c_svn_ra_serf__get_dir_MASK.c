#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_13__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_12__ {char* path; } ;
struct TYPE_14__ {scalar_t__ supports_deadprop_count; TYPE_1__ session_url; } ;
typedef  TYPE_3__ svn_ra_serf__session_t ;
struct TYPE_15__ {int /*<<< orphan*/  done; } ;
typedef  TYPE_4__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct get_dir_baton_t {scalar_t__ supports_deadprop_count; char const* path; int /*<<< orphan*/ * dirents; int /*<<< orphan*/ * ret_props; int /*<<< orphan*/  is_directory; int /*<<< orphan*/ * result_pool; } ;
typedef  int apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SVN_DIRENT_HAS_PROPS ; 
 int SVN_DIRENT_KIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  all_props ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_dir_dirents_cb ; 
 int /*<<< orphan*/  get_dir_props_cb ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_4__**,TYPE_3__*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct get_dir_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char const**,int /*<<< orphan*/ *,TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 scalar_t__ svn_tristate_false ; 
 scalar_t__ svn_tristate_unknown ; 

svn_error_t *
FUNC17(svn_ra_session_t *ra_session,
                     apr_hash_t **dirents,
                     svn_revnum_t *fetched_rev,
                     apr_hash_t **ret_props,
                     const char *rel_path,
                     svn_revnum_t revision,
                     apr_uint32_t dirent_fields,
                     apr_pool_t *result_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_pool_t *scratch_pool = FUNC11(result_pool);
  svn_ra_serf__handler_t *dirent_handler = NULL;
  svn_ra_serf__handler_t *props_handler = NULL;
  const char *path;
  struct get_dir_baton_t gdb;
  svn_error_t *err = SVN_NO_ERROR;

  gdb.result_pool = result_pool;
  gdb.is_directory = FALSE;
  gdb.supports_deadprop_count = svn_tristate_unknown;

  path = session->session_url.path;

  /* If we have a relative path, URI encode and append it. */
  if (rel_path)
    {
      path = FUNC9(path, rel_path, scratch_pool);
    }

  /* If the user specified a peg revision other than HEAD, we have to fetch
     the baseline collection url for that revision. If not, we can use the
     public url. */
  if (FUNC2(revision) || fetched_rev)
    {
      FUNC0(FUNC15(&path, fetched_rev,
                                          session,
                                          path, revision,
                                          scratch_pool, scratch_pool));
      revision = SVN_INVALID_REVNUM;
    }
  /* REVISION is always SVN_INVALID_REVNUM  */
  FUNC1(!FUNC2(revision));

  gdb.path = path;

  /* If we're asked for children, fetch them now. */
  if (dirents)
    {
      /* Always request node kind to check that path is really a
       * directory. */
      if (!ret_props)
        dirent_fields |= SVN_DIRENT_KIND;

      gdb.dirents = FUNC5(result_pool);

      FUNC0(FUNC14(
                                          &dirent_handler, session,
                                          path, SVN_INVALID_REVNUM, "1",
                                          FUNC6(dirent_fields,
                                                           session,
                                                           scratch_pool),
                                          get_dir_dirents_cb, &gdb,
                                          scratch_pool));

      FUNC16(dirent_handler);
    }
  else
    gdb.dirents = NULL;

  if (ret_props)
    {
      gdb.ret_props = FUNC5(result_pool);
      FUNC0(FUNC14(
                                          &props_handler, session,
                                          path, SVN_INVALID_REVNUM, "0",
                                          all_props,
                                          get_dir_props_cb, &gdb,
                                          scratch_pool));

      FUNC16(props_handler);
    }
  else
    gdb.ret_props = NULL;

  if (dirent_handler)
    {
      err = FUNC8(
              FUNC13(&dirent_handler->done,
                                            session,
                                            scratch_pool));

      if (err)
        {
          FUNC10(scratch_pool); /* Unregisters outstanding requests */
          return err;
        }

      if (gdb.supports_deadprop_count == svn_tristate_false
          && session->supports_deadprop_count == svn_tristate_unknown
          && dirent_fields & SVN_DIRENT_HAS_PROPS)
        {
          /* We have to requery as the server didn't give us the right
             information */
          session->supports_deadprop_count = svn_tristate_false;

          FUNC4(gdb.dirents);

          FUNC0(FUNC14(
                                              &dirent_handler, session,
                                              path, SVN_INVALID_REVNUM, "1",
                                              FUNC6(dirent_fields,
                                                               session,
                                                               scratch_pool),
                                              get_dir_dirents_cb, &gdb,
                                              scratch_pool));

          FUNC16(dirent_handler);
        }
    }

  if (props_handler)
    {
      err = FUNC8(
              FUNC13(&props_handler->done,
                                            session,
                                            scratch_pool));
    }

  /* And dirent again for the case when we had to send the request again */
  if (! err && dirent_handler)
    {
      err = FUNC8(
              FUNC13(&dirent_handler->done,
                                            session,
                                            scratch_pool));
    }

  if (!err && gdb.supports_deadprop_count != svn_tristate_unknown)
    session->supports_deadprop_count = gdb.supports_deadprop_count;

  FUNC12(scratch_pool); /* Unregisters outstanding requests */

  FUNC0(err);

  if (!gdb.is_directory)
    return FUNC7(SVN_ERR_FS_NOT_DIRECTORY, NULL,
                            FUNC3("Can't get entries of non-directory"));

  if (ret_props)
    *ret_props = gdb.ret_props;

  if (dirents)
    *dirents = gdb.dirents;

  return SVN_NO_ERROR;
}