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
 scalar_t__ FUNC0 (char const) ; 

__attribute__((used)) static int FUNC1(const char *first, const char *second)
{
  while(*first && *second) {
    if(FUNC0(*first) != FUNC0(*second))
      /* get out of the loop as soon as they don't match */
      break;
    first++;
    second++;
  }
  /* we do the comparison here (possibly again), just to make sure that if the
     loop above is skipped because one of the strings reached zero, we must not
     return this as a successful match */
  return (FUNC0(*first) == FUNC0(*second));
}