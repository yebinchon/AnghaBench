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
 int FUNC0 (char const*) ; 
 void* FUNC1 (char const) ; 

__attribute__((used)) static int
FUNC2 (const char *bin, char *hex, int count)
{
  int i;
  /* May use a length, or a nul-terminated string as input. */
  if (count == 0)
    count = FUNC0 (bin);

  for (i = 0; i < count; i++)
    {
      *hex++ = FUNC1 ((*bin >> 4) & 0xf);
      *hex++ = FUNC1 (*bin++ & 0xf);
    }
  *hex = 0;
  return i;
}