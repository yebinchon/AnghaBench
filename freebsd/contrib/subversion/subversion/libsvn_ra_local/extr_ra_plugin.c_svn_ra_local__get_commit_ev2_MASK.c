#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pool; TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_9__ {int /*<<< orphan*/  repos; int /*<<< orphan*/  username; TYPE_1__* fs_path; int /*<<< orphan*/  fs; } ;
typedef  TYPE_3__ svn_ra_local__session_baton_t ;
typedef  int /*<<< orphan*/  svn_ra__provide_props_cb_t ;
typedef  int /*<<< orphan*/  svn_ra__provide_base_cb_t ;
typedef  int /*<<< orphan*/  svn_ra__get_copysrc_kind_cb_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_editor_t ;
typedef  int /*<<< orphan*/  svn_commit_callback2_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct deltify_etc_baton {void* commit_baton; int /*<<< orphan*/  commit_cb; int /*<<< orphan*/ * lock_tokens; int /*<<< orphan*/  fspath_base; int /*<<< orphan*/  repos; int /*<<< orphan*/  fs; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct deltify_etc_baton* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  deltify_etc ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void**,TYPE_2__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct deltify_etc_baton*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_editor_t **editor,
                             svn_ra_session_t *session,
                             apr_hash_t *revprops,
                             svn_commit_callback2_t commit_cb,
                             void *commit_baton,
                             apr_hash_t *lock_tokens,
                             svn_boolean_t keep_locks,
                             svn_ra__provide_base_cb_t provide_base_cb,
                             svn_ra__provide_props_cb_t provide_props_cb,
                             svn_ra__get_copysrc_kind_cb_t get_copysrc_kind_cb,
                             void *cb_baton,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  struct deltify_etc_baton *deb = FUNC3(result_pool, sizeof(*deb));

  FUNC5(&commit_cb, &commit_baton, session,
                        commit_cb, commit_baton, result_pool);

  /* NOTE: the RA callbacks are ignored. We pass everything directly to
     the REPOS editor.  */

  /* Prepare the baton for deltify_etc()  */
  deb->fs = sess->fs;
  deb->repos = sess->repos;
  deb->fspath_base = sess->fs_path->data;
  if (! keep_locks)
    deb->lock_tokens = lock_tokens;
  else
    deb->lock_tokens = NULL;
  deb->commit_cb = commit_cb;
  deb->commit_baton = commit_baton;

  /* Ensure there is a username (and an FS access context) associated with
     the session and its FS handle.  */
  FUNC0(FUNC4(session, scratch_pool));

  /* If there are lock tokens to add, do so.  */
  FUNC0(FUNC1(sess->fs, sess->fs_path->data, lock_tokens,
                            session->pool, scratch_pool));

  /* Copy the REVPROPS and insert the author/username.  */
  revprops = FUNC2(scratch_pool, revprops);
  FUNC7(revprops, SVN_PROP_REVISION_AUTHOR,
                FUNC9(sess->username, scratch_pool));

  return FUNC6(FUNC8(
                           editor, sess->repos, NULL /* authz */,
                           NULL /* authz_repos_name */, NULL /* authz_user */,
                           revprops,
                           deltify_etc, deb, cancel_func, cancel_baton,
                           result_pool, scratch_pool));
}