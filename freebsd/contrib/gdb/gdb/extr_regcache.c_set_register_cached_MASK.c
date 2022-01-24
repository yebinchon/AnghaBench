#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* register_valid_p; TYPE_1__* descr; } ;
struct TYPE_3__ {int nr_raw_registers; } ;

/* Variables and functions */
 TYPE_2__* current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void
FUNC1 (int regnum, int state)
{
  FUNC0 (regnum >= 0);
  FUNC0 (regnum < current_regcache->descr->nr_raw_registers);
  current_regcache->register_valid_p[regnum] = state;
}