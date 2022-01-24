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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int*) ; 
 int MAX_STDEBUG_BREAKPOINTS ; 
 scalar_t__* breakaddr ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

__attribute__((used)) static int
FUNC5 (CORE_ADDR addr, char *shadow)
{
  int i;
  CORE_ADDR bp_addr = addr;
  int bp_size = 0;

  FUNC0 (&bp_addr, &bp_size);

  for (i = 0; i <= MAX_STDEBUG_BREAKPOINTS; i++)
    if (breakaddr[i] == 0)
      {
	breakaddr[i] = addr;

	FUNC4 (bp_addr, shadow, bp_size);
	FUNC3 ("BR %x H\r", addr);
	FUNC1 (1);
	return 0;
      }

  FUNC2 (gdb_stderr, "Too many breakpoints (> 16) for STDBUG\n");
  return 1;
}