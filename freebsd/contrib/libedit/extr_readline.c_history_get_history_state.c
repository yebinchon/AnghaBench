
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
typedef TYPE_1__ HISTORY_STATE ;


 TYPE_1__* el_malloc (int) ;
 int history_length ;

HISTORY_STATE *
history_get_history_state(void)
{
 HISTORY_STATE *hs;

 if ((hs = el_malloc(sizeof(*hs))) == ((void*)0))
  return ((void*)0);
 hs->length = history_length;
 return hs;
}
