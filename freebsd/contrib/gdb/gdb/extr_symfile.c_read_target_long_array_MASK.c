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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int TARGET_LONG_BYTES ; 
 char* FUNC0 (int) ; 
 unsigned int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3 (CORE_ADDR memaddr, unsigned int *myaddr, int len)
{
  /* FIXME (alloca): Not safe if array is very large. */
  char *buf = FUNC0 (len * TARGET_LONG_BYTES);
  int i;

  FUNC2 (memaddr, buf, len * TARGET_LONG_BYTES);
  for (i = 0; i < len; i++)
    myaddr[i] = FUNC1 (TARGET_LONG_BYTES * i + buf,
					  TARGET_LONG_BYTES);
}