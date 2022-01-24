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
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_txdelta_stream_t **stream_p,
                        svn_fs_root_t *source_root,
                        const char *source_path,
                        svn_fs_root_t *target_root,
                        const char *target_path,
                        apr_pool_t *pool)
{
  dag_node_t *source_node, *target_node;
  apr_pool_t *scratch_pool = FUNC4(pool);

  if (source_root && source_path)
    FUNC0(FUNC2(&source_node, source_root, source_path,
                                   scratch_pool, scratch_pool));
  else
    source_node = NULL;
  FUNC0(FUNC3(&target_node, target_root, target_path,
                                      scratch_pool));

  /* Create a delta stream that turns the source into the target.  */
  FUNC0(FUNC1(stream_p, source_node,
                                              target_node, pool,
                                              scratch_pool));

  FUNC5(scratch_pool);
  return SVN_NO_ERROR;
}