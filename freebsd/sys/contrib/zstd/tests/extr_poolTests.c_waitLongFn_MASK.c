#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ val; scalar_t__ max; scalar_t__ countdown; int /*<<< orphan*/  mut; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ poolTest_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *opaque) {
  poolTest_t* const test = (poolTest_t*) opaque;
  FUNC2(&test->mut);
  test->val++;
  if (test->val > test->max)
      test->max = test->val;
  FUNC3(&test->mut);

  FUNC0(10);

  FUNC2(&test->mut);
  test->val--;
  test->countdown--;
  if (test->countdown == 0)
      FUNC1(&test->cond);
  FUNC3(&test->mut);
}