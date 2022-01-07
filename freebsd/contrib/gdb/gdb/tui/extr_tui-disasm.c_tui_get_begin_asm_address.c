
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tui_locator_element {scalar_t__ addr; } ;
struct TYPE_2__ {struct tui_locator_element locator; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
struct tui_gen_win_info {scalar_t__* content; } ;
struct minimal_symbol {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;

CORE_ADDR
tui_get_begin_asm_address (void)
{
  struct tui_gen_win_info * locator;
  struct tui_locator_element * element;
  CORE_ADDR addr;

  locator = tui_locator_win_info_ptr ();
  element = &((struct tui_win_element *) locator->content[0])->which_element.locator;

  if (element->addr == 0)
    {
      struct minimal_symbol *main_symbol;



      main_symbol = lookup_minimal_symbol ("main", ((void*)0), ((void*)0));
      if (main_symbol == 0)
        main_symbol = lookup_minimal_symbol ("MAIN", ((void*)0), ((void*)0));
      if (main_symbol == 0)
        main_symbol = lookup_minimal_symbol ("_start", ((void*)0), ((void*)0));
      if (main_symbol)
        addr = SYMBOL_VALUE_ADDRESS (main_symbol);
      else
        addr = 0;
    }
  else
    addr = element->addr;

  return addr;
}
