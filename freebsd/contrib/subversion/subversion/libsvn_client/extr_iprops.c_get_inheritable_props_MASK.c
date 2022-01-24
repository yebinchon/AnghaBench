#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_13__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  char const apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char const* FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char const*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ *,char const**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC22(apr_hash_t **wcroot_iprops,
                      const char *local_abspath,
                      svn_revnum_t revision,
                      svn_depth_t depth,
                      svn_ra_session_t *ra_session,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  apr_hash_t *iprop_paths;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC16(scratch_pool);
  apr_pool_t *session_pool = NULL;
  *wcroot_iprops = FUNC4(result_pool);

  FUNC1(FUNC2(revision));

  /* If we don't have a base revision for LOCAL_ABSPATH then it can't
     possibly be a working copy root, nor can it contain any WC roots
     in the form of switched subtrees.  So there is nothing to cache. */

  FUNC0(FUNC20(&iprop_paths, depth,
                                            ctx->wc_ctx, local_abspath,
                                            scratch_pool, iterpool));

  /* If we are in the midst of a checkout or an update that is bringing in
     an external, then svn_wc__get_cached_iprop_children won't return
     LOCAL_ABSPATH in IPROPS_PATHS because the former has no cached iprops
     yet.  So make sure LOCAL_ABSPATH is present if it's a WC root. */
  if (!FUNC13(iprop_paths, local_abspath))
    {
      svn_boolean_t needs_cached_iprops;

      FUNC0(FUNC9(&needs_cached_iprops, local_abspath,
                                   ra_session, ctx, iterpool));
      if (needs_cached_iprops)
        {
          const char *target_abspath = FUNC8(scratch_pool,
                                                   local_abspath);

          /* As value we set TARGET_ABSPATH, but any string besides ""
             would do */
          FUNC14(iprop_paths, target_abspath, target_abspath);
        }
    }

      for (hi = FUNC3(scratch_pool, iprop_paths);
           hi;
           hi = FUNC5(hi))
        {
          const char *child_abspath = FUNC6(hi);
          const char *child_repos_relpath = FUNC7(hi);
          const char *url;
          apr_array_header_t *inherited_props;
          svn_error_t *err;

          FUNC15(iterpool);

          if (*child_repos_relpath == '\0')
            {
              /* A repository root doesn't have inherited properties */
              continue;
            }

          FUNC0(FUNC21(&url, ctx->wc_ctx, child_abspath,
                                       iterpool, iterpool));
          if (ra_session)
            FUNC0(FUNC19(ra_session, url, scratch_pool));
          else
            {
              if (! session_pool)
                session_pool = FUNC16(scratch_pool);

              FUNC0(FUNC10(&ra_session, url, NULL,
                                                  ctx,
                                                  session_pool, iterpool));
            }

          err = FUNC18(ra_session, &inherited_props,
                                           "", revision,
                                           result_pool, iterpool);

          if (err)
            {
              if (err->apr_err != SVN_ERR_FS_NOT_FOUND)
                return FUNC12(err);

              FUNC11(err);
              continue;
            }

          FUNC14(*wcroot_iprops,
                        FUNC8(result_pool, child_abspath),
                        inherited_props);
        }


  FUNC17(iterpool);
  if (session_pool)
    FUNC17(session_pool);

  return SVN_NO_ERROR;

}