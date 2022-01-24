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
struct internalvar {struct internalvar* value; struct internalvar* name; struct internalvar* next; } ;

/* Variables and functions */
 struct internalvar* internalvars ; 
 int /*<<< orphan*/  FUNC0 (struct internalvar*) ; 

void
FUNC1 (void)
{
  struct internalvar *var;

  while (internalvars)
    {
      var = internalvars;
      internalvars = var->next;
      FUNC0 (var->name);
      FUNC0 (var->value);
      FUNC0 (var);
    }
}