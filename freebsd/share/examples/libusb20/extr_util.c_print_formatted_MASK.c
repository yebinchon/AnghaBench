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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

void
FUNC2(uint8_t *buf, uint32_t len)
{
  int i, j;

  for (j = 0; j < len; j += 16)
    {
      FUNC0("%02x: ", j);

      for (i = 0; i < 16 && i + j < len; i++)
	FUNC0("%02x ", buf[i + j]);
      FUNC0("  ");
      for (i = 0; i < 16 && i + j < len; i++)
	{
	  uint8_t c = buf[i + j];
	  if(c >= ' ' && c <= '~')
	    FUNC0("%c", (char)c);
	  else
	    FUNC1('.');
	}
      FUNC1('\n');
    }
}