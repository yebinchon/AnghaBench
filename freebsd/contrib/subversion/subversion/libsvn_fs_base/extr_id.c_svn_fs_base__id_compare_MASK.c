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
typedef  int /*<<< orphan*/  svn_fs_node_relation_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  svn_fs_node_common_ancestor ; 
 int /*<<< orphan*/  svn_fs_node_unchanged ; 
 int /*<<< orphan*/  svn_fs_node_unrelated ; 

svn_fs_node_relation_t
FUNC2(const svn_fs_id_t *a,
                        const svn_fs_id_t *b)
{
  if (FUNC1(a, b))
    return svn_fs_node_unchanged;
  return (FUNC0(a, b) ? svn_fs_node_common_ancestor
                                              : svn_fs_node_unrelated);
}