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
 char** FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static char **
FUNC2 (char **old, char **new)
{
  int i;

  if (old == NULL || new == NULL)
    return NULL;
  for (i = 0; new[i] != NULL; ++i)
    {
      old = FUNC0(old, new[i], FUNC1(new[i]));
      if (old == NULL)
	break;
    }
  return old;
}