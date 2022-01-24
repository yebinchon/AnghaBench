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
struct TYPE_4__ {scalar_t__ revision; int /*<<< orphan*/  node_id; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ path_order_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const path_order_t * const * lhs_p,
                   const path_order_t * const * rhs_p)
{
  const path_order_t * lhs = *lhs_p;
  const path_order_t * rhs = *rhs_p;

  /* lexicographic order on path and node (i.e. latest first) */
  int diff = FUNC1(lhs->path, rhs->path);
  if (diff)
    return diff;

  /* reverse order on node (i.e. latest first) */
  diff = FUNC0(&rhs->node_id, &lhs->node_id);
  if (diff)
    return diff;

  /* reverse order on revision (i.e. latest first) */
  if (lhs->revision != rhs->revision)
    return lhs->revision < rhs->revision ? 1 : -1;

  return 0;
}