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
struct regcache {int* register_valid_p; TYPE_1__* descr; } ;
struct TYPE_2__ {int nr_raw_registers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

int
FUNC1 (struct regcache *regcache, int regnum)
{
  FUNC0 (regcache != NULL);
  FUNC0 (regnum >= 0 && regnum < regcache->descr->nr_raw_registers);
  return regcache->register_valid_p[regnum];
}