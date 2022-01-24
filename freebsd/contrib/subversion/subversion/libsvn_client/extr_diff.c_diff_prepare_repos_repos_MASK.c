#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_31__ {int kind; } ;
typedef  TYPE_1__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_32__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct TYPE_33__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
struct TYPE_34__ {char* url; int /*<<< orphan*/  rev; } ;
typedef  TYPE_4__ svn_client__pathrev_t ;
typedef  enum svn_opt_revision_kind { ____Placeholder_svn_opt_revision_kind } svn_opt_revision_kind ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_CLIENT_UNRELATED_RESOURCES ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 scalar_t__ SVN_ERR_RA_DAV_FORBIDDEN ; 
 scalar_t__ SVN_ERR_RA_NOT_AUTHORIZED ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (TYPE_4__**,int /*<<< orphan*/ *,char const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ **,char const*,char const*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,...) ; 
 TYPE_2__* FUNC11 (TYPE_2__*) ; 
 scalar_t__ svn_node_none ; 
 int svn_opt_revision_unspecified ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 char* FUNC13 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(const char **url1,
                         const char **url2,
                         svn_revnum_t *rev1,
                         svn_revnum_t *rev2,
                         const char **anchor1,
                         const char **anchor2,
                         const char **target1,
                         const char **target2,
                         svn_node_kind_t *kind1,
                         svn_node_kind_t *kind2,
                         svn_ra_session_t **ra_session,
                         svn_client_ctx_t *ctx,
                         const char *path_or_url1,
                         const char *path_or_url2,
                         const svn_opt_revision_t *revision1,
                         const svn_opt_revision_t *revision2,
                         const svn_opt_revision_t *peg_revision,
                         apr_pool_t *pool)
{
  const char *local_abspath1 = NULL;
  const char *local_abspath2 = NULL;
  const char *repos_root_url;
  const char *wri_abspath = NULL;
  svn_client__pathrev_t *resolved1;
  svn_client__pathrev_t *resolved2 = NULL;
  enum svn_opt_revision_kind peg_kind = peg_revision->kind;

  if (!FUNC12(path_or_url2))
    {
      FUNC0(FUNC8(&local_abspath2, path_or_url2, pool));
      FUNC0(FUNC18(url2, ctx->wc_ctx, local_abspath2,
                                   pool, pool));
      wri_abspath = local_abspath2;
    }
  else
    *url2 = FUNC2(pool, path_or_url2);

  if (!FUNC12(path_or_url1))
    {
      FUNC0(FUNC8(&local_abspath1, path_or_url1, pool));
      wri_abspath = local_abspath1;
    }

  FUNC0(FUNC7(ra_session, *url2, wri_abspath,
                                      ctx, pool, pool));

  /* If we are performing a pegged diff, we need to find out what our
     actual URLs will be. */
  if (peg_kind != svn_opt_revision_unspecified
      || path_or_url1 == path_or_url2
      || local_abspath2)
    {
      svn_error_t *err;

      err = FUNC6(&resolved2,
                                            *ra_session, path_or_url2,
                                            peg_revision, revision2,
                                            ctx, pool);
      if (err)
        {
          if (err->apr_err != SVN_ERR_CLIENT_UNRELATED_RESOURCES
              && err->apr_err != SVN_ERR_FS_NOT_FOUND)
            return FUNC11(err);

          FUNC9(err);
          resolved2 = NULL;
        }
    }
  else
    resolved2 = NULL;

  if (peg_kind != svn_opt_revision_unspecified
      || path_or_url1 == path_or_url2
      || local_abspath1)
    {
      svn_error_t *err;

      err = FUNC6(&resolved1,
                                            *ra_session, path_or_url1,
                                            peg_revision, revision1,
                                            ctx, pool);
      if (err)
        {
          if (err->apr_err != SVN_ERR_CLIENT_UNRELATED_RESOURCES
              && err->apr_err != SVN_ERR_FS_NOT_FOUND)
            return FUNC11(err);

          FUNC9(err);
          resolved1 = NULL;
        }
    }
  else
    resolved1 = NULL;

  if (resolved1)
    {
      *url1 = resolved1->url;
      *rev1 = resolved1->rev;
    }
  else
    {
      /* It would be nice if we could just return an error when resolving a
         location fails... But in many such cases we prefer diffing against
         an not existing location to show adds od removes (see issue #4153) */

      if (resolved2
          && (peg_kind != svn_opt_revision_unspecified
              || path_or_url1 == path_or_url2))
        *url1 = resolved2->url;
      else if (! local_abspath1)
        *url1 = path_or_url1;
      else
        FUNC0(FUNC18(url1, ctx->wc_ctx, local_abspath1,
                                     pool, pool));

      FUNC0(FUNC5(rev1, NULL, ctx->wc_ctx,
                                              local_abspath1 /* may be NULL */,
                                              *ra_session, revision1, pool));
    }

  if (resolved2)
    {
      *url2 = resolved2->url;
      *rev2 = resolved2->rev;
    }
  else
    {
      /* It would be nice if we could just return an error when resolving a
         location fails... But in many such cases we prefer diffing against
         an not existing location to show adds od removes (see issue #4153) */

      if (resolved1
          && (peg_kind != svn_opt_revision_unspecified
              || path_or_url1 == path_or_url2))
        *url2 = resolved1->url;
      /* else keep url2 */

      FUNC0(FUNC5(rev2, NULL, ctx->wc_ctx,
                                              local_abspath2 /* may be NULL */,
                                              *ra_session, revision2, pool));
    }

  /* Resolve revision and get path kind for the second target. */
  FUNC0(FUNC16(*ra_session, *url2, pool));
  FUNC0(FUNC14(*ra_session, "", *rev2, kind2, pool));

  /* Do the same for the first target. */
  FUNC0(FUNC16(*ra_session, *url1, pool));
  FUNC0(FUNC14(*ra_session, "", *rev1, kind1, pool));

  /* Either both URLs must exist at their respective revisions,
   * or one of them may be missing from one side of the diff. */
  if (*kind1 == svn_node_none && *kind2 == svn_node_none)
    {
      if (FUNC4(*url1, *url2) == 0)
        return FUNC10(SVN_ERR_FS_NOT_FOUND, NULL,
                                 FUNC1("Diff target '%s' was not found in the "
                                   "repository at revisions '%ld' and '%ld'"),
                                 *url1, *rev1, *rev2);
      else
        return FUNC10(SVN_ERR_FS_NOT_FOUND, NULL,
                                 FUNC1("Diff targets '%s' and '%s' were not found "
                                   "in the repository at revisions '%ld' and "
                                   "'%ld'"),
                                 *url1, *url2, *rev1, *rev2);
    }
  else if (*kind1 == svn_node_none)
    FUNC0(FUNC3(*url1, *rev2, *rev1, *ra_session, pool));
  else if (*kind2 == svn_node_none)
    FUNC0(FUNC3(*url2, *rev1, *rev2, *ra_session, pool));

  FUNC0(FUNC15(*ra_session, &repos_root_url, pool));

  /* Choose useful anchors and targets for our two URLs. */
  *anchor1 = *url1;
  *anchor2 = *url2;
  *target1 = "";
  *target2 = "";

  /* If none of the targets is the repository root open the parent directory
     to allow describing replacement of the target itself */
  if (FUNC4(*url1, repos_root_url) != 0
      && FUNC4(*url2, repos_root_url) != 0)
    {
      svn_node_kind_t ignored_kind;
      svn_error_t *err;

      FUNC17(anchor1, target1, *url1, pool);
      FUNC17(anchor2, target2, *url2, pool);

      FUNC0(FUNC16(*ra_session, *anchor1, pool));

      /* We might not have the necessary rights to read the root now.
         (It is ok to pass a revision here where the node doesn't exist) */
      err = FUNC14(*ra_session, "", *rev1, &ignored_kind, pool);

      if (err && (err->apr_err == SVN_ERR_RA_DAV_FORBIDDEN
                  || err->apr_err == SVN_ERR_RA_NOT_AUTHORIZED))
        {
          FUNC9(err);

          /* Ok, lets undo the reparent...

             We can't report replacements this way, but at least we can
             report changes on the descendants */

          *anchor1 = FUNC13(*anchor1, *target1, pool);
          *anchor2 = FUNC13(*anchor2, *target2, pool);
          *target1 = "";
          *target2 = "";

          FUNC0(FUNC16(*ra_session, *anchor1, pool));
        }
      else
        FUNC0(err);
    }

  return SVN_NO_ERROR;
}