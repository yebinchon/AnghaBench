#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_mergeinfo_explicit ; 
 int /*<<< orphan*/  svn_mergeinfo_nearest_ancestor ; 

svn_error_t *
FUNC9(const char *target_abspath,
                            const char *wc_elision_limit_abspath,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *pool)
{
  const char *limit_abspath = wc_elision_limit_abspath;

  FUNC1(FUNC6(target_abspath));
  FUNC1(!wc_elision_limit_abspath || FUNC6(wc_elision_limit_abspath));

  /* Check for first easy out: We are already at the limit path. */
  if (!limit_abspath
      || FUNC3(target_abspath, limit_abspath) != 0)
    {
      svn_mergeinfo_t target_mergeinfo;
      svn_mergeinfo_t mergeinfo = NULL;
      svn_error_t *err;

      /* Get the TARGET_WCPATH's explicit mergeinfo. */
      err = FUNC4(&target_mergeinfo, NULL,
                                         svn_mergeinfo_explicit,
                                         target_abspath,
                                         NULL, NULL, FALSE,
                                         ctx, pool, pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
            {
              /* Issue #3896: If we attempt elision because invalid
                 mergeinfo is present on TARGET_WCPATH, then don't let
                 the merge fail, just skip the elision attempt. */
              FUNC7(err);
              return SVN_NO_ERROR;
            }
          else
            {
              return FUNC8(err);
            }
        }

     /* If TARGET_WCPATH has no explicit mergeinfo, there's nothing to
         elide, we're done. */
      if (target_mergeinfo == NULL)
        return SVN_NO_ERROR;

      /* Get TARGET_WCPATH's inherited mergeinfo from the WC. */
      err = FUNC4(&mergeinfo, NULL,
                                         svn_mergeinfo_nearest_ancestor,
                                         target_abspath,
                                         limit_abspath,
                                         NULL, FALSE, ctx, pool, pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
            {
              /* Issue #3896 again, but invalid mergeinfo is inherited. */
              FUNC7(err);
              return SVN_NO_ERROR;
            }
          else
            {
              return FUNC8(err);
            }
        }

      /* If TARGET_WCPATH inherited no mergeinfo from the WC and we are
         not limiting our search to the working copy then check if it
         inherits any from the repos. */
      if (!mergeinfo && !wc_elision_limit_abspath)
        {
          err = FUNC5(
            &mergeinfo, NULL, NULL, TRUE,
            svn_mergeinfo_nearest_ancestor,
            NULL, target_abspath, ctx, pool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
                {
                  /* Issue #3896 again, but invalid mergeinfo is inherited
                     from the repository. */
                  FUNC7(err);
                  return SVN_NO_ERROR;
                }
              else
                {
                  return FUNC8(err);
                }
            }
        }

      /* If there is nowhere to elide TARGET_WCPATH's mergeinfo to and
         the elision is limited, then we are done.*/
      if (!mergeinfo && wc_elision_limit_abspath)
        return SVN_NO_ERROR;

      FUNC0(FUNC2(mergeinfo, target_mergeinfo, target_abspath,
                              ctx, pool));
    }
  return SVN_NO_ERROR;
}