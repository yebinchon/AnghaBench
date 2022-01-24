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
 scalar_t__ FUNC1 (char) ; 

__attribute__((used)) static void
FUNC2(char **pstr)
{
  char *str = *pstr;
  size_t i;

  while (FUNC1(*str))
    str++;
  *pstr = str;
  i = FUNC0(str);
  while ((i > 0) && FUNC1(str[i-1]))
    i--;
  str[i] = '\0';
}