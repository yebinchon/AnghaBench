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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/ * (* svn_cancel_func_t ) (void*) ;
struct svn_wc__db_info_t {scalar_t__ kind; scalar_t__ conflicted; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 struct svn_wc__db_info_t* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_wc__db_t *db,
                            const char *src_dir_abspath,
                            const char *dst_dir_abspath,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC8(scratch_pool);
  apr_hash_t *nodes;
  apr_hash_t *conflicts; /* Unused */
  apr_hash_index_t *hi;

  /* Reuse a status helper to obtain all subdirs and conflicts in a single
     db transaction. */
  /* ### This uses a rifle to kill a fly. But at least it doesn't use heavy
          artillery. */
  FUNC0(FUNC10(&nodes, &conflicts, db,
                                        src_dir_abspath,
                                        FALSE /* base_tree_only */,
                                        scratch_pool, iterpool));

  for (hi = FUNC1(scratch_pool, nodes);
       hi;
       hi = FUNC2(hi))
    {
      const char *name = FUNC3(hi);
      struct svn_wc__db_info_t *info = FUNC4(hi);

      if (cancel_func)
        FUNC0(cancel_func(cancel_baton));

      if (info->conflicted)
        {
          FUNC7(iterpool);
          FUNC0(FUNC5(
                            db,
                            FUNC6(src_dir_abspath, name, iterpool),
                            FUNC6(dst_dir_abspath, name, iterpool),
                            iterpool));
        }
      if (info->kind == svn_node_dir)
        {
          FUNC7(iterpool);
          FUNC0(FUNC11(
                            db,
                            FUNC6(src_dir_abspath, name, iterpool),
                            FUNC6(dst_dir_abspath, name, iterpool),
                            cancel_func, cancel_baton,
                            iterpool));
        }
    }

  FUNC9(iterpool);
  return SVN_NO_ERROR;
}