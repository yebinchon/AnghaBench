#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {char const* path; scalar_t__ revision_deleted; } ;
typedef  TYPE_1__ log_path_del_rev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_BAD_REVISION ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  log_path_del_receiver ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_ra_session_t *session,
                                 const char *rel_deleted_path,
                                 svn_revnum_t peg_revision,
                                 svn_revnum_t end_revision,
                                 svn_revnum_t *revision_deleted,
                                 apr_pool_t *pool)
{
  const char *fs_path;
  log_path_del_rev_t log_path_deleted_baton;

  /* Fetch the absolute FS path associated with PATH. */
  FUNC0(FUNC4(&fs_path, session, rel_deleted_path, pool));

  if (!FUNC1(peg_revision))
    return FUNC6(SVN_ERR_CLIENT_BAD_REVISION, NULL,
                             FUNC2("Invalid peg revision %ld"), peg_revision);
  if (!FUNC1(end_revision))
    return FUNC6(SVN_ERR_CLIENT_BAD_REVISION, NULL,
                             FUNC2("Invalid end revision %ld"), end_revision);
  if (end_revision <= peg_revision)
    return FUNC5(SVN_ERR_CLIENT_BAD_REVISION, NULL,
                            FUNC2("Peg revision must precede end revision"));

  log_path_deleted_baton.path = fs_path;
  log_path_deleted_baton.revision_deleted = SVN_INVALID_REVNUM;

  /* Examine the logs of SESSION's URL to find when DELETED_PATH was first
     deleted or replaced. */
  FUNC0(FUNC7(session, NULL, peg_revision, end_revision, 0,
                          TRUE, TRUE, FALSE,
                          FUNC3(pool, 0, sizeof(char *)),
                          log_path_del_receiver, &log_path_deleted_baton,
                          pool));
  *revision_deleted = log_path_deleted_baton.revision_deleted;
  return SVN_NO_ERROR;
}