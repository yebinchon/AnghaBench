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
struct user_reg {char const* name; struct user_reg* next; } ;
struct gdbarch {int dummy; } ;
struct gdb_user_regs {struct user_reg* first; } ;

/* Variables and functions */
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 struct gdb_user_regs* FUNC0 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gdbarch*) ; 
 int FUNC2 (struct gdbarch*) ; 
 char* FUNC3 (struct gdbarch*,int) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int) ; 
 int /*<<< orphan*/  user_regs_data ; 

int
FUNC7 (struct gdbarch *gdbarch, const char *name,
			     int len)
{
  /* Make life easy, set the len to something reasonable.  */
  if (len < 0)
    len = FUNC5 (name);

  /* Search register name space first - always let an architecture
     specific register override the user registers.  */
  {
    int i;
    int maxregs = (FUNC2 (gdbarch)
		   + FUNC1 (gdbarch));
    for (i = 0; i < maxregs; i++)
      {
	const char *regname = FUNC3 (gdbarch, i);
	if (regname != NULL && len == FUNC5 (regname)
	    && FUNC6 (regname, name, len) == 0)
	  {
	    return i;
	  }
      }
  }

  /* Search the user name space.  */
  {
    struct gdb_user_regs *regs = FUNC0 (gdbarch, user_regs_data);
    struct user_reg *reg;
    int nr;
    for (nr = 0, reg = regs->first; reg != NULL; reg = reg->next, nr++)
      {
	if ((len < 0 && FUNC4 (reg->name, name))
	    || (len == FUNC5 (reg->name)
		&& FUNC6 (reg->name, name, len) == 0))
	  return NUM_REGS + NUM_PSEUDO_REGS + nr;
      }
  }

  return -1;
}