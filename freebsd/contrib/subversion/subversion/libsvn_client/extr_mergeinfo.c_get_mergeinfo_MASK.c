#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_5__ {scalar_t__ rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,TYPE_1__**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_mergeinfo_inherited ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_mergeinfo_catalog_t *mergeinfo_catalog,
              const char **repos_root,
              const char *path_or_url,
              const svn_opt_revision_t *peg_revision,
              svn_boolean_t include_descendants,
              svn_boolean_t ignore_invalid_mergeinfo,
              svn_client_ctx_t *ctx,
              svn_ra_session_t *ra_session,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  svn_boolean_t use_url = FUNC8(path_or_url);
  svn_client__pathrev_t *peg_loc;

  if (ra_session && FUNC8(path_or_url))
    {
      FUNC0(FUNC10(ra_session, path_or_url, scratch_pool));
      FUNC0(FUNC5(&peg_loc, ra_session,
                                              path_or_url,
                                              peg_revision,
                                              peg_revision,
                                              ctx, scratch_pool));
    }
  else
    {
      FUNC0(FUNC4(&ra_session, &peg_loc,
                                                path_or_url, NULL,
                                                peg_revision,
                                                peg_revision, ctx, scratch_pool));
    }

  /* If PATH_OR_URL is as working copy path determine if we will need to
     contact the repository for the requested PEG_REVISION. */
  if (!use_url)
    {
      svn_client__pathrev_t *origin;
      FUNC0(FUNC7(&local_abspath, path_or_url,
                                      scratch_pool));

      FUNC0(FUNC6(&origin, local_abspath, ctx,
                                             scratch_pool, scratch_pool));
      if (!origin
          || FUNC1(origin->url, peg_loc->url) != 0
          || peg_loc->rev != origin->rev)
      {
        use_url = TRUE; /* Don't rely on local mergeinfo */
      }
    }

  FUNC0(FUNC9(ra_session, repos_root, result_pool));

  if (use_url)
    {
      FUNC0(FUNC2(
        mergeinfo_catalog, ra_session, peg_loc->url, peg_loc->rev,
        svn_mergeinfo_inherited, FALSE, include_descendants,
        result_pool, scratch_pool));
    }
  else /* ! svn_path_is_url() */
    {
      FUNC0(FUNC3(
        mergeinfo_catalog, NULL, NULL, include_descendants, FALSE,
        ignore_invalid_mergeinfo, svn_mergeinfo_inherited,
        ra_session, path_or_url, ctx,
        result_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}