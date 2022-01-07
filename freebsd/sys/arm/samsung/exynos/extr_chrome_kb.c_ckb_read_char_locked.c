
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ckb_softc {int sc_repeat_key; int sc_flags; int* scan; int cols; int rows; int* scan_local; int sc_repeat_callout; int gpio; int gpio_dev; scalar_t__ sc_repeating; } ;
struct TYPE_4__ {struct ckb_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int CKB_CTX_LOCK_ASSERT () ;
 int CKB_FLAG_POLLING ;
 int DELAY (int) ;
 int EC_CMD_MKBP_STATE ;
 int GPIO_PIN_GET (int ,int ,int*) ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int NOKEY ;
 int callout_reset (int *,int,int ,struct ckb_softc*) ;
 int callout_stop (int *) ;
 int ckb_repeat ;
 scalar_t__ ec_command (int ,int*,int,int*,int) ;
 int hz ;
 int keymap_read (struct ckb_softc*,int,int) ;

__attribute__((used)) static uint32_t
ckb_read_char_locked(keyboard_t *kbd, int wait)
{
 struct ckb_softc *sc;
 int i,j;
 uint16_t key;
 int oldbit;
 int newbit;
 int status;

 sc = kbd->kb_data;

 CKB_CTX_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd))
  return (NOKEY);

 if (sc->sc_repeating) {
  sc->sc_repeating = 0;
  callout_reset(&sc->sc_repeat_callout, hz / 10,
                    ckb_repeat, sc);
  return (sc->sc_repeat_key);
 }

 if (sc->sc_flags & CKB_FLAG_POLLING) {
  for (;;) {
   GPIO_PIN_GET(sc->gpio_dev, sc->gpio, &status);
   if (status == 0) {
    if (ec_command(EC_CMD_MKBP_STATE, sc->scan,
     sc->cols,
        sc->scan, sc->cols)) {
     return (NOKEY);
    }
    break;
   }
   if (!wait) {
    return (NOKEY);
   }
   DELAY(1000);
  }
 }

 for (i = 0; i < sc->cols; i++) {
  for (j = 0; j < sc->rows; j++) {
   oldbit = (sc->scan_local[i] & (1 << j));
   newbit = (sc->scan[i] & (1 << j));

   if (oldbit == newbit)
    continue;

   key = keymap_read(sc, i, j);
   if (key == 0) {
    continue;
   }

   if (newbit > 0) {

    sc->scan_local[i] |= (1 << j);


    sc->sc_repeat_key = key;
    callout_reset(&sc->sc_repeat_callout,
        hz / 2, ckb_repeat, sc);

   } else {

    sc->scan_local[i] &= ~(1 << j);


    key |= 0x80;


    sc->sc_repeat_key = -1;
    callout_stop(&sc->sc_repeat_callout);
   }

   return (key);
  }
 }

 return (NOKEY);
}
