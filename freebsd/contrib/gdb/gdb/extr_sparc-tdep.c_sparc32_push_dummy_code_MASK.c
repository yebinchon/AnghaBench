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
struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC4 (struct gdbarch *gdbarch, CORE_ADDR sp,
			 CORE_ADDR funcaddr, int using_gcc,
			 struct value **args, int nargs,
			 struct type *value_type,
			 CORE_ADDR *real_pc, CORE_ADDR *bp_addr)
{
  *bp_addr = sp - 4;
  *real_pc = funcaddr;

  if (FUNC2 (value_type, using_gcc))
    {
      char buf[4];

      /* This is an UNIMP instruction.  */
      FUNC1 (buf, 4, FUNC0 (value_type) & 0x1fff);
      FUNC3 (sp - 8, buf, 4);
      return sp - 8;
    }

  return sp - 4;
}