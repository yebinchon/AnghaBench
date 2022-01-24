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
struct value {int dummy; } ;
struct user_reg {struct value* (* read ) (struct frame_info*) ;} ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gdbarch*) ; 
 int FUNC2 (struct gdbarch*) ; 
 struct gdbarch* FUNC3 (struct frame_info*) ; 
 struct value* FUNC4 (struct frame_info*) ; 
 struct user_reg* FUNC5 (struct gdbarch*,int) ; 

struct value *
FUNC6 (int regnum, struct frame_info *frame)
{
  struct gdbarch *gdbarch = FUNC3 (frame);
  int maxregs = (FUNC2 (gdbarch)
		 + FUNC1 (gdbarch));
  struct user_reg *reg = FUNC5 (gdbarch, regnum - maxregs);
  FUNC0 (reg != NULL);
  return reg->read (frame);
}