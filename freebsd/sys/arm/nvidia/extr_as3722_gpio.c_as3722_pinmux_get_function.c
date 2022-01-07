
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct as3722_softc {int dummy; } ;
struct TYPE_3__ {int fnc_val; int name; } ;


 TYPE_1__* as3722_fnc_table ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
as3722_pinmux_get_function(struct as3722_softc *sc, char *name)
{
 int i;

 for (i = 0; i < nitems(as3722_fnc_table); i++) {
  if (strcmp(as3722_fnc_table[i].name, name) == 0)
    return (as3722_fnc_table[i].fnc_val);
 }
 return (-1);
}
