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
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXECUTABLE ; 
 int /*<<< orphan*/  SVN_PROP_NEEDS_LOCK ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_wc__db_t *db,
              const char *local_abspath,
              svn_node_kind_t kind,
              const apr_hash_t *props,
              apr_pool_t *scratch_pool)
{
  if (kind == svn_node_file)
    {
      svn_skel_t *work_item = NULL;

      if (props && (FUNC1(props, SVN_PROP_EXECUTABLE)
                    || FUNC1(props, SVN_PROP_NEEDS_LOCK)))
        FUNC0(FUNC4(&work_item, db, local_abspath,
                                                 scratch_pool, scratch_pool));

      FUNC0(FUNC3(db, local_abspath, props, work_item,
                                     scratch_pool));
      if (work_item)
        FUNC0(FUNC5(db, local_abspath, NULL, NULL, scratch_pool));
    }
  else
    {
      FUNC0(FUNC2(db, local_abspath, props, NULL,
                                          scratch_pool));
    }

  return SVN_NO_ERROR;
}