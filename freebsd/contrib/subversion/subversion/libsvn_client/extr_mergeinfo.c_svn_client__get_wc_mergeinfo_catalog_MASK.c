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
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  scalar_t__ svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_inheritance_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 char const* FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,char const*,char const*,char const**,scalar_t__,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(svn_mergeinfo_catalog_t *mergeinfo_cat,
                                     svn_boolean_t *inherited,
                                     svn_boolean_t include_descendants,
                                     svn_mergeinfo_inheritance_t inherit,
                                     const char *local_abspath,
                                     const char *limit_path,
                                     const char **walked_path,
                                     svn_boolean_t ignore_invalid_mergeinfo,
                                     svn_client_ctx_t *ctx,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  const char *target_repos_relpath;
  svn_mergeinfo_t mergeinfo;
  const char *repos_root;

  FUNC1(FUNC10(local_abspath));
  *mergeinfo_cat = NULL;
  FUNC0(FUNC13(NULL, &target_repos_relpath,
                                      &repos_root, NULL,
                                      ctx->wc_ctx, local_abspath,
                                      scratch_pool, scratch_pool));

  /* Get the mergeinfo for the LOCAL_ABSPATH target and set *INHERITED and
     *WALKED_PATH. */
  FUNC0(FUNC9(&mergeinfo, inherited, inherit,
                                       local_abspath, limit_path,
                                       walked_path, ignore_invalid_mergeinfo,
                                       ctx, result_pool, scratch_pool));

  /* Add any explicit/inherited mergeinfo for LOCAL_ABSPATH to
     *MERGEINFO_CAT. */
  if (mergeinfo)
    {
      *mergeinfo_cat = FUNC3(result_pool);
      FUNC11(*mergeinfo_cat,
                    FUNC7(result_pool, target_repos_relpath), mergeinfo);
    }

  /* If LOCAL_ABSPATH is a directory and we want the subtree mergeinfo too,
     then get it.

     With WC-NG it is cheaper to do a single db transaction, than first
     looking if we really have a directory. */
  if (include_descendants)
    {
      apr_hash_t *mergeinfo_props;
      apr_hash_index_t *hi;

      FUNC0(FUNC14(&mergeinfo_props,
                                              ctx->wc_ctx, local_abspath,
                                              SVN_PROP_MERGEINFO,
                                              scratch_pool, scratch_pool));

      /* Convert *mergeinfo_props into a proper svn_mergeinfo_catalog_t */
      for (hi = FUNC2(scratch_pool, mergeinfo_props);
           hi;
           hi = FUNC4(hi))
        {
          const char *node_abspath = FUNC5(hi);
          svn_string_t *propval = FUNC6(hi);
          svn_mergeinfo_t subtree_mergeinfo;
          const char *repos_relpath;

          if (FUNC8(node_abspath, local_abspath) == 0)
            continue; /* Already parsed in svn_client__get_wc_mergeinfo */

          FUNC0(FUNC13(NULL, &repos_relpath, NULL, NULL,
                                              ctx->wc_ctx, node_abspath,
                                              result_pool, scratch_pool));

          FUNC0(FUNC12(&subtree_mergeinfo, propval->data,
                                      result_pool));

          /* If the target had no explicit/inherited mergeinfo and this is the
             first subtree with mergeinfo found, then the catalog will still
             be NULL. */
          if (*mergeinfo_cat == NULL)
            *mergeinfo_cat = FUNC3(result_pool);

          FUNC11(*mergeinfo_cat, repos_relpath, subtree_mergeinfo);
        }
    }

  return SVN_NO_ERROR;
}