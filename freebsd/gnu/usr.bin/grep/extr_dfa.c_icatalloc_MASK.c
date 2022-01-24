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
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4 (char *old, char *new)
{
  char *result;
  size_t oldsize, newsize;

  newsize = (new == NULL) ? 0 : FUNC3(new);
  if (old == NULL)
    oldsize = 0;
  else if (newsize == 0)
    return old;
  else	oldsize = FUNC3(old);
  if (old == NULL)
    result = (char *) FUNC0(newsize + 1);
  else
    result = (char *) FUNC1((void *) old, oldsize + newsize + 1);
  if (result != NULL && new != NULL)
    (void) FUNC2(result + oldsize, new);
  return result;
}