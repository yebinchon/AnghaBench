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
 size_t FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC2 (char *lookin, char *lookfor)
{
  char *cp;
  size_t len;

  len = FUNC0(lookfor);
  for (cp = lookin; *cp != '\0'; ++cp)
    if (FUNC1(cp, lookfor, len) == 0)
      return cp;
  return NULL;
}