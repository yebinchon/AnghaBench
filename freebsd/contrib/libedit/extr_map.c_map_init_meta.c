
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ el_action_t ;
struct TYPE_6__ {scalar_t__ type; scalar_t__* alt; scalar_t__* key; } ;
struct TYPE_7__ {TYPE_1__ el_map; } ;
typedef TYPE_2__ EditLine ;





 scalar_t__ EM_META_NEXT ;
 scalar_t__ MAP_VI ;
 int XK_CMD ;
 int keymacro_add (TYPE_2__*,int*,int ,int ) ;
 int keymacro_map_cmd (TYPE_2__*,int) ;

__attribute__((used)) static void
map_init_meta(EditLine *el)
{
 wchar_t buf[3];
 int i;
 el_action_t *map = el->el_map.key;
 el_action_t *alt = el->el_map.alt;

 for (i = 0; i <= 0377 && map[i] != EM_META_NEXT; i++)
  continue;

 if (i > 0377) {
  for (i = 0; i <= 0377 && alt[i] != EM_META_NEXT; i++)
   continue;
  if (i > 0377) {
   i = 033;
   if (el->el_map.type == MAP_VI)
    map = alt;
  } else
   map = alt;
 }
 buf[0] = (wchar_t)i;
 buf[2] = 0;
 for (i = 0200; i <= 0377; i++)
  switch (map[i]) {
  case 130:
  case 128:
  case 129:
   break;
  default:
   buf[1] = i & 0177;
   keymacro_add(el, buf, keymacro_map_cmd(el, (int) map[i]), XK_CMD);
   break;
  }
 map[(int) buf[0]] = 129;
}
