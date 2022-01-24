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
struct tui_locator_element {scalar_t__ addr; } ;
struct TYPE_2__ {struct tui_locator_element locator; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
struct tui_gen_win_info {scalar_t__* content; } ;
struct minimal_symbol {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tui_gen_win_info* FUNC2 () ; 

CORE_ADDR
FUNC3 (void)
{
  struct tui_gen_win_info * locator;
  struct tui_locator_element * element;
  CORE_ADDR addr;

  locator = FUNC2 ();
  element = &((struct tui_win_element *) locator->content[0])->which_element.locator;

  if (element->addr == 0)
    {
      struct minimal_symbol *main_symbol;

      /* Find address of the start of program.
         Note: this should be language specific.  */
      main_symbol = FUNC1 ("main", NULL, NULL);
      if (main_symbol == 0)
        main_symbol = FUNC1 ("MAIN", NULL, NULL);
      if (main_symbol == 0)
        main_symbol = FUNC1 ("_start", NULL, NULL);
      if (main_symbol)
        addr = FUNC0 (main_symbol);
      else
        addr = 0;
    }
  else				/* the target is executing */
    addr = element->addr;

  return addr;
}