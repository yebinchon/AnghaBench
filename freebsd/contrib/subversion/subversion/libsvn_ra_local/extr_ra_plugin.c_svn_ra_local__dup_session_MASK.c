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
struct TYPE_6__ {TYPE_2__* priv; } ;
typedef  TYPE_1__ svn_ra_session_t ;
struct TYPE_7__ {int /*<<< orphan*/ * useragent; int /*<<< orphan*/ * username; int /*<<< orphan*/ * uuid; int /*<<< orphan*/  fs; int /*<<< orphan*/  repos; int /*<<< orphan*/  fs_path; int /*<<< orphan*/  repos_url; int /*<<< orphan*/  callback_baton; int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_2__ svn_ra_local__session_baton_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ignore_warnings ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_ra_session_t *new_session,
                          svn_ra_session_t *session,
                          const char *new_session_url,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_ra_local__session_baton_t *old_sess = session->priv;
  svn_ra_local__session_baton_t *new_sess;
  const char *fs_path;

  /* Allocate and stash the session_sess args we have already. */
  new_sess = FUNC1(result_pool, sizeof(*new_sess));
  new_sess->callbacks = old_sess->callbacks;
  new_sess->callback_baton = old_sess->callback_baton;

  /* ### Re-use existing FS handle? */

  /* Reuse existing code */
  FUNC0(FUNC4(&(new_sess->repos),
                                  &(new_sess->repos_url),
                                  &fs_path,
                                  new_session_url,
                                  result_pool));

  new_sess->fs_path = FUNC6(fs_path, result_pool);

  /* Cache the filesystem object from the repos here for
     convenience. */
  new_sess->fs = FUNC5(new_sess->repos);

  /* Ignore FS warnings. */
  FUNC3(new_sess->fs, ignore_warnings, NULL);

  /* Cache the repository UUID as well */
  new_sess->uuid = FUNC2(result_pool, old_sess->uuid);

  new_sess->username = old_sess->username
                            ? FUNC2(result_pool, old_sess->username)
                            : NULL;

  new_sess->useragent = FUNC2(result_pool, old_sess->useragent);
  new_session->priv = new_sess;

  return SVN_NO_ERROR;
}