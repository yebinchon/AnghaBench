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
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_FOUND_CONFLICT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_failed_conflict ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_wc_context_t *wc_ctx,
                                 const char *local_abspath,
                                 svn_wc_notify_func2_t notify_func,
                                 void *notify_baton,
                                 apr_pool_t *scratch_pool)
{
  const char *wcroot_abspath;

  FUNC0(FUNC8(&wcroot_abspath, wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));

  local_abspath = FUNC3(local_abspath, scratch_pool);

  while(FUNC4(wcroot_abspath, local_abspath))
    {
      svn_boolean_t tree_conflicted;

      /* Check if the parent has tree conflicts */
      FUNC0(FUNC9(NULL, NULL, &tree_conflicted,
                                   wc_ctx, local_abspath, scratch_pool));
      if (tree_conflicted)
        {
          if (notify_func != NULL)
            {
              notify_func(notify_baton,
                          FUNC10(local_abspath,
                                               svn_wc_notify_failed_conflict,
                                               scratch_pool),
                          scratch_pool);
            }

          return FUNC7(
                   SVN_ERR_WC_FOUND_CONFLICT, NULL,
                   FUNC1("Aborting commit: '%s' remains in tree-conflict"),
                   FUNC6(local_abspath, scratch_pool));
        }

      /* Step outwards */
      if (FUNC5(local_abspath, FUNC2(local_abspath)))
        break;
      else
        local_abspath = FUNC3(local_abspath, scratch_pool);
    }

  return SVN_NO_ERROR;
}