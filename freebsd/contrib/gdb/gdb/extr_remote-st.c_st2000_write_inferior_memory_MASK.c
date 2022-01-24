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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,unsigned char) ; 

__attribute__((used)) static int
FUNC2 (CORE_ADDR memaddr, unsigned char *myaddr, int len)
{
  int i;

  for (i = 0; i < len; i++)
    {
      FUNC1 ("PM.B %x %x\r", memaddr + i, myaddr[i]);
      FUNC0 (1);
    }
  return len;
}