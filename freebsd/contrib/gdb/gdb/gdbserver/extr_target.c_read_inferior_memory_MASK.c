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
struct TYPE_2__ {int (* read_memory ) (int /*<<< orphan*/ ,char*,int) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* the_target ; 

int
FUNC2 (CORE_ADDR memaddr, char *myaddr, int len)
{
  int res;
  res = (*the_target->read_memory) (memaddr, myaddr, len);
  FUNC0 (memaddr, myaddr, len);
  return res;
}