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
struct target_ops {struct target_ops* beneath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct target_ops*,int /*<<< orphan*/ ) ; 
 struct target_ops* target_stack ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2 (struct target_ops *t)
{
  struct target_ops **cur;
  struct target_ops *tmp;

  /* Look for the specified target.  Note that we assume that a target
     can only occur once in the target stack. */

  for (cur = &target_stack; (*cur) != NULL; cur = &(*cur)->beneath)
    {
      if ((*cur) == t)
	break;
    }

  if ((*cur) == NULL)
    return 0;			/* Didn't find target_ops, quit now */

  /* NOTE: cagney/2003-12-06: In '94 the close call was made
     unconditional by moving it to before the above check that the
     target was in the target stack (something about "Change the way
     pushing and popping of targets work to support target overlays
     and inheritance").  This doesn't make much sense - only open
     targets should be closed.  */
  FUNC0 (t, 0);

  /* Unchain the target */
  tmp = (*cur);
  (*cur) = (*cur)->beneath;
  tmp->beneath = NULL;

  FUNC1 ();

  return 1;
}