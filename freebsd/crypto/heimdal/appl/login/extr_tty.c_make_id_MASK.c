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
 scalar_t__ FUNC0 (char*,char*,int) ; 

char *
FUNC1 (char *tty)
{
  char *res = tty;

  if (FUNC0 (res, "pts/", 4) == 0)
    res += 4;
  if (FUNC0 (res, "tty", 3) == 0)
    res += 3;
  return res;
}