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
struct value {int dummy; } ;
struct symbol {int dummy; } ;
struct frame_info {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 struct symbol* FUNC0 (struct block*) ; 
 scalar_t__ FUNC1 (struct symbol*) ; 
 struct frame_info* FUNC2 (struct block*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct value* FUNC4 (struct symbol*,struct frame_info*) ; 
 scalar_t__ FUNC5 (struct symbol*) ; 

struct value *
FUNC6 (struct symbol *var, struct block *b)
{
  struct value *val;
  struct frame_info *frame = NULL;

  if (!b)
    frame = NULL;		/* Use selected frame.  */
  else if (FUNC5 (var))
    {
      frame = FUNC2 (b);
      if (!frame)
	{
	  if (FUNC0 (b)
	      && FUNC1 (FUNC0 (b)))
	    FUNC3 ("No frame is currently executing in block %s.",
		   FUNC1 (FUNC0 (b)));
	  else
	    FUNC3 ("No frame is currently executing in specified block");
	}
    }

  val = FUNC4 (var, frame);
  if (!val)
    FUNC3 ("Address of symbol \"%s\" is unknown.", FUNC1 (var));

  return val;
}