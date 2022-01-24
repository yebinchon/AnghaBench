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
struct regset_info {scalar_t__ size; int /*<<< orphan*/  (* store_function ) (void*) ;int /*<<< orphan*/  get_request; } ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int inferior_pid ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
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

      buf = FUNC0 (regset->size);
      res = FUNC2 (regset->get_request, inferior_pid, (PTRACE_ARG3_TYPE) buf, 0);
      if (res < 0)
	{
	  char s[256];
	  FUNC3 (s, "ptrace(regsets_fetch_inferior_registers) PID=%d",
		   inferior_pid);
	  FUNC1 (s);
	}
      regset->store_function (buf);
      regset ++;
    }
  return 0;
}