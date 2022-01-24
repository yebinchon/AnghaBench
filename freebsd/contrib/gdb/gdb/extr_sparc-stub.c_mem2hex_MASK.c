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
 void** hexchars ; 
 scalar_t__ mem_err ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static unsigned char *
FUNC1 (unsigned char *mem, unsigned char *buf, int count, int may_fault)
{
  unsigned char ch;

  FUNC0(may_fault);

  while (count-- > 0)
    {
      ch = *mem++;
      if (mem_err)
	return 0;
      *buf++ = hexchars[ch >> 4];
      *buf++ = hexchars[ch & 0xf];
    }

  *buf = 0;

  FUNC0(0);

  return buf;
}