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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2 (char *buf, int len)
{
  if (len <= 8)
    {
      if (len == 8 || len == 4)
	{
	  long l[2];
	  FUNC0 (l, buf, len);
	  FUNC1 ("\t0x%lx", l[0]);
	  if (len == 8)
	    FUNC1 (" 0x%lx", l[1]);
	  FUNC1 ("\n");
	}
      else
	{
	  int i;
	  FUNC1 ("\t");
	  for (i = 0; i < len; i++)
	    FUNC1 ("0x%x ", buf[i]);
	  FUNC1 ("\n");
	}
    }
}