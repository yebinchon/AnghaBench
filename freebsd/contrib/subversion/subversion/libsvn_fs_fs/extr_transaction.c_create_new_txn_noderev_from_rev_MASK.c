#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/ * copyfrom_path; int /*<<< orphan*/  predecessor_count; int /*<<< orphan*/  predecessor_id; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_fs_t *fs,
                                const svn_fs_fs__id_part_t *txn_id,
                                svn_fs_id_t *src,
                                apr_pool_t *pool)
{
  node_revision_t *noderev;
  const svn_fs_fs__id_part_t *node_id, *copy_id;

  FUNC0(FUNC3(&noderev, fs, src, pool, pool));

  if (FUNC5(noderev->id))
    return FUNC2(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Copying from transactions not allowed"));

  noderev->predecessor_id = noderev->id;
  noderev->predecessor_count++;
  noderev->copyfrom_path = NULL;
  noderev->copyfrom_rev = SVN_INVALID_REVNUM;

  /* For the transaction root, the copyroot never changes. */

  node_id = FUNC6(noderev->id);
  copy_id = FUNC4(noderev->id);
  noderev->id = FUNC7(node_id, copy_id, txn_id, pool);

  return FUNC8(fs, noderev->id, noderev, TRUE, pool);
}