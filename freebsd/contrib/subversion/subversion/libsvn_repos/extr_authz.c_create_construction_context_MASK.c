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
typedef  int /*<<< orphan*/  node_segment_pair_t ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ construction_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static construction_context_t *
FUNC2(apr_pool_t *result_pool)
{
  construction_context_t *result = FUNC1(result_pool, sizeof(*result));

  /* Array will be auto-extended but this initial size will make it rarely
   * ever necessary. */
  result->path = FUNC0(result_pool, 32, sizeof(node_segment_pair_t));

  return result;
}