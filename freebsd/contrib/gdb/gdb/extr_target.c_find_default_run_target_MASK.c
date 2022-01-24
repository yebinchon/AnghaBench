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
struct target_ops {scalar_t__ to_can_run; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (struct target_ops*) ; 
 int target_struct_size ; 
 struct target_ops** target_structs ; 

__attribute__((used)) static struct target_ops *
FUNC2 (char *do_mesg)
{
  struct target_ops **t;
  struct target_ops *runable = NULL;
  int count;

  count = 0;

  for (t = target_structs; t < target_structs + target_struct_size;
       ++t)
    {
      if ((*t)->to_can_run && FUNC1 (*t))
	{
	  runable = *t;
	  ++count;
	}
    }

  if (count != 1)
    FUNC0 ("Don't know how to %s.  Try \"help target\".", do_mesg);

  return runable;
}