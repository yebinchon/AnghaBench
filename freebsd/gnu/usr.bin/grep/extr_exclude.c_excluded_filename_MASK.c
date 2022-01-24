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
struct exclude {char** exclude; int exclude_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const* const,char const*,int) ; 

int
FUNC1 (struct exclude const *ex, char const *f, int options)
{
  char const * const *exclude = ex->exclude;
  int exclude_count = ex->exclude_count;
  int i;

  for (i = 0;  i < exclude_count;  i++)
    if (FUNC0 (exclude[i], f, options) == 0)
      return 1;

  return 0;
}