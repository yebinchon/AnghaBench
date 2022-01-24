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
struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
struct TYPE_2__ {int (* to_xfer_memory ) (scalar_t__,char*,int,int,struct mem_attrib*,struct target_ops*) ;} ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 TYPE_1__ debug_target ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int FUNC3 (scalar_t__,char*,int,int,struct mem_attrib*,struct target_ops*) ; 

__attribute__((used)) static int
FUNC4 (CORE_ADDR memaddr, char *myaddr, int len, int write,
		      struct mem_attrib *attrib,
		      struct target_ops *target)
{
  int retval;

  retval = debug_target.to_xfer_memory (memaddr, myaddr, len, write,
					attrib, target);

  FUNC0 (gdb_stdlog,
		      "target_xfer_memory (0x%x, xxx, %d, %s, xxx) = %d",
		      (unsigned int) memaddr,	/* possable truncate long long */
		      len, write ? "write" : "read", retval);



  if (retval > 0)
    {
      int i;

      FUNC2 (", bytes =", gdb_stdlog);
      for (i = 0; i < retval; i++)
	{
	  if ((((long) &(myaddr[i])) & 0xf) == 0)
	    FUNC0 (gdb_stdlog, "\n");
	  FUNC0 (gdb_stdlog, " %02x", myaddr[i] & 0xff);
	}
    }

  FUNC1 ('\n', gdb_stdlog);

  return retval;
}