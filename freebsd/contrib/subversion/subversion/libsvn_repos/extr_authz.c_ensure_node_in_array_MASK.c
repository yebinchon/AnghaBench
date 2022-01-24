#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * node; int /*<<< orphan*/ * next; } ;
typedef  TYPE_1__ sorted_pattern_t ;
typedef  int /*<<< orphan*/  node_t ;
typedef  int /*<<< orphan*/  authz_rule_segment_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int nelts; } ;
typedef  TYPE_2__ apr_array_header_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  compare_node_rule_segment ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static node_t *
FUNC4(apr_array_header_t **array,
                     authz_rule_segment_t *segment,
                     apr_pool_t *result_pool)
{
  int idx;
  sorted_pattern_t entry;
  sorted_pattern_t *entry_ptr;

  /* Auto-create the array. */
  if (!*array)
    *array = FUNC0(result_pool, 4, sizeof(sorted_pattern_t));

  /* Find the node in ARRAY and the IDX at which it were to be inserted.
   * Initialize IDX such that we won't attempt a hinted lookup (likely
   * to fail and therefore pure overhead). */
  idx = (*array)->nelts;
  entry_ptr = FUNC3(*array, segment, &idx,
                                     compare_node_rule_segment);
  if (entry_ptr)
    return entry_ptr->node;

  /* There is no such node, yet.
   * Create one and insert it into the sorted array. */
  entry.node = FUNC1(segment, result_pool);
  entry.next = NULL;
  FUNC2(*array, &entry, idx);

  return entry.node;
}