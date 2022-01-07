
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unit; int flags; int keyboard; int adapter; int mouse_char; int cursor_char; } ;
typedef TYPE_1__ sc_softc_t ;


 int SC_CURSOR_CHAR ;
 int SC_INIT_DONE ;
 int SC_MOUSE_CHAR ;
 TYPE_1__* sc_softcs ;

sc_softc_t *
sc_get_softc(int unit, int flags)
{
 sc_softc_t *sc;

 if (unit < 0)
  return (((void*)0));
 sc = &sc_softcs[unit];
 sc->unit = unit;
 if ((sc->flags & SC_INIT_DONE) == 0) {
  sc->keyboard = -1;
  sc->adapter = -1;
  sc->cursor_char = SC_CURSOR_CHAR;
  sc->mouse_char = SC_MOUSE_CHAR;
 }
 return (sc);
}
