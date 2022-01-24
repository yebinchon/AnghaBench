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
struct TYPE_6__ {int /*<<< orphan*/  lock_state; int /*<<< orphan*/  prop_state; int /*<<< orphan*/  content_state; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  (* svn_client_import_filter_func_t ) (void*,scalar_t__*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;
struct TYPE_7__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_lock_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_skip ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 

__attribute__((used)) static svn_error_t *
FUNC16(apr_hash_t **children,
                      const char *dir_abspath,
                      apr_hash_t *excludes,
                      apr_array_header_t *ignores,
                      apr_array_header_t *global_ignores,
                      svn_client_import_filter_func_t filter_callback,
                      void *filter_baton,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  apr_hash_t *dirents;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC11(scratch_pool);

  FUNC0(FUNC9(&dirents, dir_abspath, TRUE, result_pool,
                              scratch_pool));

  for (hi = FUNC1(scratch_pool, dirents); hi; hi = FUNC2(hi))
    {
      const char *base_name = FUNC3(hi);
      const svn_io_dirent2_t *dirent = FUNC4(hi);
      const char *local_abspath;

      FUNC10(iterpool);

      local_abspath = FUNC6(dir_abspath, base_name, iterpool);

      if (FUNC14(base_name, iterpool))
        {
          /* If someone's trying to import a directory named the same
             as our administrative directories, that's probably not
             what they wanted to do.  If they are importing a file
             with that name, something is bound to blow up when they
             checkout what they've imported.  So, just skip items with
             that name.  */
          if (ctx->notify_func2)
            {
              svn_wc_notify_t *notify
                = FUNC13(FUNC6(local_abspath, base_name,
                                                       iterpool),
                                       svn_wc_notify_skip, iterpool);
              notify->kind = svn_node_dir;
              notify->content_state = notify->prop_state
                = svn_wc_notify_state_inapplicable;
              notify->lock_state = svn_wc_notify_lock_state_inapplicable;
              ctx->notify_func2(ctx->notify_baton2, notify, iterpool);
            }

          FUNC8(dirents, base_name, NULL);
          continue;
        }
            /* If this is an excluded path, exclude it. */
      if (FUNC7(excludes, local_abspath))
        {
          FUNC8(dirents, base_name, NULL);
          continue;
        }

      if (ignores && FUNC15(base_name, ignores, iterpool))
        {
          FUNC8(dirents, base_name, NULL);
          continue;
        }

      if (global_ignores &&
          FUNC15(base_name, global_ignores, iterpool))
        {
          FUNC8(dirents, base_name, NULL);
          continue;
        }

      if (filter_callback)
        {
          svn_boolean_t filter = FALSE;

          FUNC0(filter_callback(filter_baton, &filter, local_abspath,
                                  dirent, iterpool));

          if (filter)
            {
              FUNC8(dirents, base_name, NULL);
              continue;
            }
        }
    }
  FUNC12(iterpool);

  *children = dirents;
  return SVN_NO_ERROR;
}