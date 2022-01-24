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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,unsigned char,...) ; 

__attribute__((used)) static int
FUNC4 (CORE_ADDR memaddr, unsigned char *myaddr, int len)
{
  int i;
  char buf[200];

  for (i = 0; i < len; i++)
    {
      if (((memaddr + i) & 3) == 0 && (i + 3 < len))
	{
	  /* Can be done with a long word */
	  FUNC3 (buf, "m %s %x%02x%02x%02x;l\r",
		   FUNC1 (memaddr + i),
		   myaddr[i], myaddr[i + 1], myaddr[i + 2], myaddr[i + 3]);
	  FUNC2 (buf);
	  i += 3;
	}
      else
	{
	  FUNC3 (buf, "m %s %x\r", FUNC1 (memaddr + i), myaddr[i]);
	  FUNC2 (buf);
	}
    }

  FUNC0 ();

  return len;
}