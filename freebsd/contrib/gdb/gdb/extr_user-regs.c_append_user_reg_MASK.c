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
typedef  int /*<<< orphan*/  user_reg_read_ftype ;
struct user_reg {char const* name; struct user_reg* next; int /*<<< orphan*/ * read; } ;
struct gdb_user_regs {struct user_reg** last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (struct gdb_user_regs *regs, const char *name,
		 user_reg_read_ftype *read, struct user_reg *reg)
{
  /* The caller is responsible for allocating memory needed to store
     the register.  By doing this, the function can operate on a
     register list stored in the common heap or a specific obstack.  */
  FUNC0 (reg != NULL);
  reg->name = name;
  reg->read = read;
  reg->next = NULL;
  (*regs->last) = reg;
  regs->last = &(*regs->last)->next;
}