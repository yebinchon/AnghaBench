
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
typedef int cfg_section_t ;
struct TYPE_3__ {scalar_t__ state; int * x_value; } ;
typedef TYPE_1__ cfg_option_t ;


 int FALSE ;
 scalar_t__ option_state_cyclic ;
 scalar_t__ option_state_expanded ;
 scalar_t__ option_state_needs_expanding ;

__attribute__((used)) static svn_boolean_t
rmex_callback(void *baton, cfg_section_t *section, cfg_option_t *option)
{


  if ( (option->state == option_state_expanded && option->x_value != ((void*)0))
      || option->state == option_state_cyclic)
    {
      option->x_value = ((void*)0);
      option->state = option_state_needs_expanding;
    }

  return FALSE;
}
