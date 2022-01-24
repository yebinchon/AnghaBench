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
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (unsigned char*,int) ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  char *p;
  int i, len, retlen;
  unsigned char buf[1000];

  /* Convert hexadecimal chars into a byte buffer.  */
  p = args;
  len = 0;
  while (*p != '\0')
    {
      buf[len++] = FUNC0 (p[0]) * 16 + FUNC0 (p[1]);
      if (p[1] == '\0')
	break;
      p += 2;
    }

  retlen = FUNC2 (buf, len);

  FUNC1 ("Reply is ");
  for (i = 0; i < retlen; ++i)
    {
      FUNC1 ("%02x", buf[i]);
    }
  FUNC1 ("\n");
}