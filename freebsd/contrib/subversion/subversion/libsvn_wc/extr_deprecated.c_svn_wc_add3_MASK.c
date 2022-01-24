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
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(const char *path,
            svn_wc_adm_access_t *parent_access,
            svn_depth_t depth,
            const char *copyfrom_url,
            svn_revnum_t copyfrom_rev,
            svn_cancel_func_t cancel_func,
            void *cancel_baton,
            svn_wc_notify_func2_t notify_func,
            void *notify_baton,
            apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *wc_db = FUNC3(parent_access);
  const char *local_abspath;

  FUNC0(FUNC5(&wc_ctx, NULL, wc_db, pool));
  FUNC0(FUNC1(&local_abspath, path, pool));

  FUNC0(FUNC7(wc_ctx, local_abspath,
                      depth, copyfrom_url,
                      copyfrom_rev,
                      cancel_func, cancel_baton,
                      notify_func, notify_baton, pool));

  /* Make sure the caller gets the new access baton in the set. */
  if (FUNC4(wc_db, local_abspath, pool) == NULL)
    {
      svn_node_kind_t kind;

      FUNC0(FUNC6(&kind, wc_db, local_abspath,
                                   FALSE /* allow_missing */,
                                   TRUE /* show_deleted */,
                                   FALSE /* show_hidden */, pool));
      if (kind == svn_node_dir)
        {
          svn_wc_adm_access_t *adm_access;

          /* Open the access baton in adm_access' pool to give it the same
             lifetime */
          FUNC0(FUNC9(&adm_access, parent_access, path, TRUE,
                                   copyfrom_url ? -1 : 0,
                                   cancel_func, cancel_baton,
                                   FUNC8(parent_access)));
        }
    }

  return FUNC2(FUNC10(wc_ctx));
}