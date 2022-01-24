#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_4__ {int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_MISSING_URL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const**,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_ra_session_t **ra_session_p,
                                  svn_client__pathrev_t **resolved_loc_p,
                                  const char *path_or_url,
                                  const char *base_dir_abspath,
                                  const svn_opt_revision_t *peg_revision,
                                  const svn_opt_revision_t *revision,
                                  svn_client_ctx_t *ctx,
                                  apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  const char *initial_url;
  const char *corrected_url;
  svn_client__pathrev_t *resolved_loc;
  const char *wri_abspath;

  FUNC0(FUNC4(&initial_url, path_or_url, ctx, pool,
                                    pool));
  if (! initial_url)
    return FUNC6(SVN_ERR_ENTRY_MISSING_URL, NULL,
                             FUNC1("'%s' has no URL"), path_or_url);

  if (base_dir_abspath)
    wri_abspath = base_dir_abspath;
  else if (!FUNC7(path_or_url))
    FUNC0(FUNC5(&wri_abspath, path_or_url, pool));
  else
    wri_abspath = NULL;

  FUNC0(FUNC2(&ra_session, &corrected_url,
                                               initial_url,
                                               wri_abspath,
                                               NULL /* commit_items */,
                                               base_dir_abspath != NULL,
                                               base_dir_abspath != NULL,
                                               ctx, pool, pool));

  /* If we got a CORRECTED_URL, we'll want to refer to that as the
     URL-ized form of PATH_OR_URL from now on. */
  if (corrected_url && FUNC7(path_or_url))
    path_or_url = corrected_url;

  FUNC0(FUNC3(&resolved_loc, ra_session,
                                          path_or_url, peg_revision, revision,
                                          ctx, pool));

  /* Make the session point to the real URL. */
  FUNC0(FUNC8(ra_session, resolved_loc->url, pool));

  *ra_session_p = ra_session;
  if (resolved_loc_p)
    *resolved_loc_p = resolved_loc;

  return SVN_NO_ERROR;
}