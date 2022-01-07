
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int el_action_t ;
struct TYPE_4__ {int * key; } ;
struct TYPE_5__ {TYPE_1__ el_map; } ;
typedef TYPE_2__ EditLine ;


 int ED_INSERT ;
 scalar_t__ iswprint (int) ;

__attribute__((used)) static void
map_init_nls(EditLine *el)
{
 int i;

 el_action_t *map = el->el_map.key;

 for (i = 0200; i <= 0377; i++)
  if (iswprint(i))
   map[i] = ED_INSERT;
}
