#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtabs_and_lines {int nelts; TYPE_1__* sals; } ;
struct function_bounds {scalar_t__ low; scalar_t__ high; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ pc; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 struct symtabs_and_lines FUNC0 (char*,int) ; 
 struct frame_info* deprecated_selected_frame ; 
 scalar_t__ FUNC1 (scalar_t__,char**,scalar_t__*,scalar_t__*) ; 
 struct frame_info* FUNC2 (struct frame_info*,int*) ; 
 scalar_t__ FUNC3 (struct frame_info*) ; 
 struct frame_info* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct function_bounds*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9 (char *arg, int from_tty)
{
  struct frame_info *fp;
  int found = 0;
  struct symtabs_and_lines sals;
  int i;
  int level = 1;
  struct function_bounds *func_bounds = (struct function_bounds *) NULL;

  if (arg != (char *) NULL)
    return;

  fp = FUNC4 ("0");
  sals = FUNC0 (arg, 1);
  func_bounds = (struct function_bounds *) FUNC8 (
			      sizeof (struct function_bounds) * sals.nelts);
  for (i = 0; (i < sals.nelts && !found); i++)
    {
      if (sals.sals[i].pc == (CORE_ADDR) 0 ||
	  FUNC1 (sals.sals[i].pc,
				    (char **) NULL,
				    &func_bounds[i].low,
				    &func_bounds[i].high) == 0)
	{
	  func_bounds[i].low =
	    func_bounds[i].high = (CORE_ADDR) NULL;
	}
    }

  do
    {
      for (i = 0; (i < sals.nelts && !found); i++)
	found = (FUNC3 (fp) >= func_bounds[i].low &&
		 FUNC3 (fp) < func_bounds[i].high);
      if (!found)
	{
	  level = 1;
	  fp = FUNC2 (fp, &level);
	}
    }
  while (!found && level == 0);

  if (func_bounds)
    FUNC7 (func_bounds);

  if (!found)
    FUNC5 ("'%s' not within current stack frame.\n", arg);
  else if (fp != deprecated_selected_frame)
    FUNC6 (fp);
}