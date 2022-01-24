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
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 int FUNC1 (char) ; 

void
FUNC2 (char *from, CORE_ADDR *mem_addr_ptr, unsigned int *len_ptr,
		 char *to)
{
  int i = 0;
  char ch;
  *mem_addr_ptr = *len_ptr = 0;

  while ((ch = from[i++]) != ',')
    {
      *mem_addr_ptr = *mem_addr_ptr << 4;
      *mem_addr_ptr |= FUNC1 (ch) & 0x0f;
    }

  while ((ch = from[i++]) != ':')
    {
      *len_ptr = *len_ptr << 4;
      *len_ptr |= FUNC1 (ch) & 0x0f;
    }

  FUNC0 (&from[i++], to, *len_ptr);
}