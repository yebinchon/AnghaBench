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

int FUNC0(const char *msg)
{
  int count = 0;
  const char *p;

  for (p = msg; *p; p++)
    {
      if (*p == '\n')
        {
          count++;
          if (*(p + 1) == '\r')
            p++;
        }
      else if (*p == '\r')
        {
          count++;
          if (*(p + 1) == '\n')
            p++;
        }
    }

  return count;
}