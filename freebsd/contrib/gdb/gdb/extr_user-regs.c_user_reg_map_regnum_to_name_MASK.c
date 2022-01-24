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
struct user_reg {char const* name; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gdbarch*) ; 
 int FUNC1 (struct gdbarch*) ; 
 char const* FUNC2 (struct gdbarch*,int) ; 
 struct user_reg* FUNC3 (struct gdbarch*,int) ; 

const char *
FUNC4 (struct gdbarch *gdbarch, int regnum)
{
  int maxregs = (FUNC1 (gdbarch)
		 + FUNC0 (gdbarch));
  if (regnum < 0)
    return NULL;
  else if (regnum < maxregs)
    return FUNC2 (gdbarch, regnum);
  else
    {
      struct user_reg *reg = FUNC3 (gdbarch, regnum - maxregs);
      if (reg == NULL)
	return NULL;
      else
	return reg->name;
    }
}