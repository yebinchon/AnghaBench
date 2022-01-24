#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_10__ {TYPE_4__* priv; } ;
typedef  TYPE_3__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_reporter3_t ;
struct TYPE_11__ {TYPE_2__* fs_path; int /*<<< orphan*/  repos; int /*<<< orphan*/  callback_baton; TYPE_1__* callbacks; int /*<<< orphan*/  repos_url; int /*<<< orphan*/  fs; } ;
typedef  TYPE_4__ svn_ra_local__session_baton_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  cancel_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_4__*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ra_local_reporter ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_ra_session_t *session,
              const svn_ra_reporter3_t **reporter,
              void **report_baton,
              svn_revnum_t revision,
              const char *target,
              const char *other_url,
              svn_boolean_t text_deltas,
              svn_depth_t depth,
              svn_boolean_t send_copyfrom_args,
              svn_boolean_t ignore_ancestry,
              const svn_delta_editor_t *editor,
              void *edit_baton,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  void *rbaton;
  const char *other_fs_path = NULL;

  /* Get the HEAD revision if one is not supplied. */
  if (! FUNC1(revision))
    FUNC0(FUNC8(&revision, sess->fs, scratch_pool));

  /* If OTHER_URL was provided, validate it and convert it into a
     regular filesystem path. */
  if (other_url)
    {
      const char *other_relpath
        = FUNC10(sess->repos_url, other_url, scratch_pool);

      /* Sanity check:  the other_url better be in the same repository as
         the original session url! */
      if (! other_relpath)
        return FUNC7
          (SVN_ERR_RA_ILLEGAL_URL, NULL,
           FUNC2("'%s'\n"
             "is not the same repository as\n"
             "'%s'"), other_url, sess->repos_url);

      other_fs_path = FUNC3(scratch_pool, "/", other_relpath,
                                  SVN_VA_NULL);
    }

  /* Pass back our reporter */
  *reporter = &ra_local_reporter;

  FUNC0(FUNC4(session, scratch_pool));

  if (sess->callbacks)
    FUNC0(FUNC6(sess->callbacks->cancel_func,
                                              sess->callback_baton,
                                              editor,
                                              edit_baton,
                                              &editor,
                                              &edit_baton,
                                              result_pool));

  /* Build a reporter baton. */
  FUNC0(FUNC9(&rbaton,
                                  revision,
                                  sess->repos,
                                  sess->fs_path->data,
                                  target,
                                  other_fs_path,
                                  text_deltas,
                                  depth,
                                  ignore_ancestry,
                                  send_copyfrom_args,
                                  editor,
                                  edit_baton,
                                  NULL,
                                  NULL,
                                  0, /* Disable zero-copy codepath, because
                                        RA API users are unaware about the
                                        zero-copy code path limitation (do
                                        not access FSFS data structures
                                        and, hence, caches).  See notes
                                        to svn_repos_begin_report3() for
                                        additional details. */
                                  result_pool));

  /* Wrap the report baton given us by the repos layer with our own
     reporter baton. */
  *report_baton = FUNC5(sess, rbaton, result_pool);

  return SVN_NO_ERROR;
}