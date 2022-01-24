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
 char FUNC0 () ; 
 char* hexchars ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void
FUNC2 (unsigned char *buffer)
{
  unsigned char checksum;
  int count;
  unsigned char ch;

  /*  $<packet info>#<checksum>. */
  do
    {
      FUNC1('$');
      checksum = 0;
      count = 0;

      while ((ch = buffer[count]))
	{
	  FUNC1(ch);
	  checksum += ch;
	  count += 1;
	}

      FUNC1('#');
      FUNC1(hexchars[checksum >> 4]);
      FUNC1(hexchars[checksum & 0xf]);

    }
  while (FUNC0() != '+');
}