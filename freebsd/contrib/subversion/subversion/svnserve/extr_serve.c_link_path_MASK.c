#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_2__ {char const* repos_url; int /*<<< orphan*/  entry_counter; int /*<<< orphan*/  report_baton; scalar_t__ err; } ;
typedef  TYPE_1__ report_driver_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC8(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                              svn_ra_svn__list_t *params, void *baton)
{
  report_driver_baton_t *b = baton;
  const char *path, *url, *lock_token, *fs_path, *depth_word;
  svn_revnum_t rev;
  svn_boolean_t start_empty;
  /* Default to infinity, for old clients that don't send depth. */
  svn_depth_t depth = svn_depth_infinity;

  FUNC0(FUNC4(params, "ccrb?(?c)?w",
                                 &path, &url, &rev, &start_empty,
                                 &lock_token, &depth_word));

  /* ### WHAT?!  The link path is an absolute URL?!  Didn't see that
     coming...   -- cmpilato  */
  path = FUNC5(path, pool);
  url = FUNC7(url, pool);
  if (depth_word)
    depth = FUNC2(depth_word);
  if (!b->err)
    b->err = FUNC1(FUNC3(b->repos_url, pool),
                         FUNC3(url, pool),
                         &fs_path);
  if (!b->err)
    b->err = FUNC6(b->report_baton, path, fs_path, rev,
                                  depth, start_empty, lock_token, pool);
  b->entry_counter++;
  return SVN_NO_ERROR;
}