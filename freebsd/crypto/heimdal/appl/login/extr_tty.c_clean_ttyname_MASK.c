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
 char* _PATH_DEV ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

char *
FUNC2 (char *tty)
{
  char *res = tty;

  if (FUNC1 (res, _PATH_DEV, FUNC0(_PATH_DEV)) == 0)
    res += FUNC0(_PATH_DEV);
  if (FUNC1 (res, "pty/", 4) == 0)
    res += 4;
  if (FUNC1 (res, "ptym/", 5) == 0)
    res += 5;
  return res;
}