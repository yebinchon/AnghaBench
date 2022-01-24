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
struct regset_info {scalar_t__ size; int /*<<< orphan*/  set_request; int /*<<< orphan*/  (* fill_function ) (void*) ;} ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  inferior_pid ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 struct regset_info* target_regsets ; 

__attribute__((used)) static int
FUNC5 ()
{
  struct regset_info *regset;

  regset = target_regsets;

  while (regset->size >= 0)
    {
      void *buf;
      int res;

      if (regset->size == 0)
	{
	  regset ++;
	  continue;
	}

      buf = FUNC1 (regset->size);
      regset->fill_function (buf);
      res = FUNC3 (regset->set_request, inferior_pid, (PTRACE_ARG3_TYPE) buf, 0);
      if (res < 0)
	{
	  FUNC2 ("Warning: ptrace(regsets_store_inferior_registers)");
	}
      regset ++;
      FUNC0 (buf);
    }
  return 0;
}