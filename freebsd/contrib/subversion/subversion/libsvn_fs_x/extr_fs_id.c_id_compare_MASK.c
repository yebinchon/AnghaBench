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
struct TYPE_6__ {int /*<<< orphan*/  node_id; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_node_relation_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  noderev_id; } ;
typedef  TYPE_2__ fs_x__id_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 TYPE_1__* FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  svn_fs_node_common_ancestor ; 
 int /*<<< orphan*/  svn_fs_node_unchanged ; 
 int /*<<< orphan*/  svn_fs_node_unrelated ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_fs_node_relation_t
FUNC4(const svn_fs_id_t *a,
           const svn_fs_id_t *b)
{
  const fs_x__id_t *id_a = (const fs_x__id_t *)a;
  const fs_x__id_t *id_b = (const fs_x__id_t *)b;
  svn_fs_x__noderev_t *noderev_a, *noderev_b;
  svn_boolean_t same_node;

  /* Quick check: same IDs? */
  if (FUNC2(&id_a->noderev_id, &id_b->noderev_id))
    return svn_fs_node_unchanged;

  /* Fetch the nodesrevs, compare the IDs of the nodes they belong to and
     clean up any temporaries.  If we can't find one of the noderevs, don't
     get access to the FS etc., report the IDs as "unrelated" as only
     valid / existing things may be related. */
  noderev_a = FUNC1(id_a);
  noderev_b = FUNC1(id_b);

  if (noderev_a && noderev_b)
    same_node = FUNC2(&noderev_a->node_id, &noderev_b->node_id);
  else
    same_node = FALSE;

  FUNC3(FUNC0(id_a));
  FUNC3(FUNC0(id_b));

  /* Return result. */
  return same_node ? svn_fs_node_common_ancestor : svn_fs_node_unrelated;
}