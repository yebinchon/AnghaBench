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
 int FUNC0 (scalar_t__,char*) ; 
 scalar_t__ sparc32nbsd_sigtramp_end ; 
 scalar_t__ sparc32nbsd_sigtramp_start ; 

__attribute__((used)) static int
FUNC1 (CORE_ADDR pc, char *name)
{
  if (pc >= sparc32nbsd_sigtramp_start && pc < sparc32nbsd_sigtramp_end)
    return 1;

  return FUNC0 (pc, name);
}