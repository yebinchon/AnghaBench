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
struct target_ops {int dummy; } ;
struct TYPE_2__ {int target_info; int /*<<< orphan*/  break_info; int /*<<< orphan*/  step_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  breakinfo ; 
 TYPE_1__ ds ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stepinfo ; 

__attribute__((used)) static void
FUNC3 (struct target_ops *target)
{
  FUNC1 ("Target capabilities:\n");
  FUNC0 (stepinfo, ds.step_info);
  FUNC0 (breakinfo, ds.break_info);
  FUNC2 ("target level RDI %x\n", (ds.target_info >> 5) & 3);
}