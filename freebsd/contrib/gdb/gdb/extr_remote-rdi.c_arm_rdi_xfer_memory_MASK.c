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
struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int RDIError_NoError ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4 (CORE_ADDR memaddr, char *myaddr, int len,
		     int should_write, struct mem_attrib *attrib,
		     struct target_ops *target)
{
  int rslt, i;

  if (should_write)
    {
      rslt = FUNC1 (myaddr, memaddr, &len);
      if (rslt != RDIError_NoError)
	{
	  FUNC2 ("RDI_write: %s\n", FUNC3 (rslt));
	}
    }
  else
    {
      rslt = FUNC0 (memaddr, myaddr, &len);
      if (rslt != RDIError_NoError)
	{
	  FUNC2 ("RDI_read: %s\n", FUNC3 (rslt));
	  len = 0;
	}
    }
  return len;
}