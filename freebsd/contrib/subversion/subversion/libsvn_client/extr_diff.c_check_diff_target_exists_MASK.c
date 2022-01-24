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
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__,...) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const char *url,
                         svn_revnum_t revision,
                         svn_revnum_t other_revision,
                         svn_ra_session_t *ra_session,
                         apr_pool_t *pool)
{
  svn_node_kind_t kind;
  const char *session_url;

  FUNC0(FUNC5(ra_session, &session_url, pool));

  if (FUNC2(url, session_url) != 0)
    FUNC0(FUNC6(ra_session, url, pool));

  FUNC0(FUNC4(ra_session, "", revision, &kind, pool));
  if (kind == svn_node_none)
    {
      if (revision == other_revision)
        return FUNC3(SVN_ERR_FS_NOT_FOUND, NULL,
                                 FUNC1("Diff target '%s' was not found in the "
                                   "repository at revision '%ld'"),
                                 url, revision);
      else
        return FUNC3(SVN_ERR_FS_NOT_FOUND, NULL,
                                 FUNC1("Diff target '%s' was not found in the "
                                   "repository at revision '%ld' or '%ld'"),
                                 url, revision, other_revision);
     }

  if (FUNC2(url, session_url) != 0)
    FUNC0(FUNC6(ra_session, session_url, pool));

  return SVN_NO_ERROR;
}