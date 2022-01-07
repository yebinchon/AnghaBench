
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* kb_data; } ;
struct ckb_softc {int cols; int sc_repeat_callout; int * sc_fkeymap; int sc_accmap; int sc_keymap; scalar_t__* scan; scalar_t__* scan_local; TYPE_1__ sc_kbd; int gpio; int rows; int dev; int * gpio_dev; int * keymap; } ;
typedef TYPE_1__ keyboard_t ;
typedef int device_t ;


 int CKB_NFKEY ;
 int ENXIO ;
 int KBD_CONFIG_DONE (TYPE_1__*) ;
 int KBD_DRIVER_NAME ;
 int KBD_FOUND_DEVICE (TYPE_1__*) ;
 int KBD_INIT_DONE (TYPE_1__*) ;
 int KBD_PROBE_DONE (TYPE_1__*) ;
 int KB_OTHER ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int accent_map ;
 int callout_init (int *,int ) ;
 int ckb_clear_state (TYPE_1__*) ;
 int ckb_ec_intr ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 struct ckb_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int * fkey_tab ;
 int kbd_init_struct (TYPE_1__*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ kbd_register (TYPE_1__*) ;
 int kbd_set_maps (TYPE_1__*,int *,int *,int *,int) ;
 int key_map ;
 void* malloc (int,int ,int ) ;
 int pad_setup_intr (int ,int ,struct ckb_softc*) ;
 int parse_dts (struct ckb_softc*) ;

__attribute__((used)) static int
chrome_kb_attach(device_t dev)
{
 struct ckb_softc *sc;
 keyboard_t *kbd;
 int error;
 int rid;
 int i;

 sc = device_get_softc(dev);

 sc->dev = dev;
 sc->keymap = ((void*)0);

 if ((error = parse_dts(sc)) != 0)
  return error;

 sc->gpio_dev = devclass_get_device(devclass_find("gpio"), 0);
 if (sc->gpio_dev == ((void*)0)) {
  device_printf(sc->dev, "Can't find gpio device.\n");
  return (ENXIO);
 }






 pad_setup_intr(sc->gpio, ckb_ec_intr, sc);

 kbd = &sc->sc_kbd;
 rid = 0;

 sc->scan_local = malloc(sc->cols, M_DEVBUF, M_NOWAIT);
 sc->scan = malloc(sc->cols, M_DEVBUF, M_NOWAIT);

 for (i = 0; i < sc->cols; i++) {
  sc->scan_local[i] = 0;
  sc->scan[i] = 0;
 }

 kbd_init_struct(kbd, KBD_DRIVER_NAME, KB_OTHER,
     device_get_unit(dev), 0, 0, 0);
 kbd->kb_data = (void *)sc;

 sc->sc_keymap = key_map;
        sc->sc_accmap = accent_map;
 for (i = 0; i < CKB_NFKEY; i++) {
  sc->sc_fkeymap[i] = fkey_tab[i];
        }

 kbd_set_maps(kbd, &sc->sc_keymap, &sc->sc_accmap,
     sc->sc_fkeymap, CKB_NFKEY);

 KBD_FOUND_DEVICE(kbd);
 ckb_clear_state(kbd);
 KBD_PROBE_DONE(kbd);

 callout_init(&sc->sc_repeat_callout, 0);

 KBD_INIT_DONE(kbd);

 if (kbd_register(kbd) < 0) {
  return (ENXIO);
 }
 KBD_CONFIG_DONE(kbd);

 return (0);
}
