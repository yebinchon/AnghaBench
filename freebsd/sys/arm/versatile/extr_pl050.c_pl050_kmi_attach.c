
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {void* kb_data; } ;
struct kmi_softc {int * sc_fkeymap; int sc_accmap; int sc_keymap; int * sc_irq_res; int sc_intr_hl; int * sc_mem_res; TYPE_1__ sc_kbd; int sc_dev; } ;
typedef TYPE_1__ keyboard_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_CLK ;
 int KBD_CONFIG_DONE (TYPE_1__*) ;
 int KBD_FOUND_DEVICE (TYPE_1__*) ;
 int KBD_INIT_DONE (TYPE_1__*) ;
 int KBD_PROBE_DONE (TYPE_1__*) ;
 int KB_OTHER ;
 int KMICR ;
 int KMICR_EN ;
 int KMICR_RXINTREN ;
 int KMIDATA ;
 int KMI_DRIVER_NAME ;
 int KMI_NFKEY ;
 int RF_ACTIVE ;
 int SET_SCANCODE_SET ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int accent_map ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int *,int ,struct kmi_softc*,int *) ;
 struct kmi_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int * fkey_tab ;
 int genkbd_diag (TYPE_1__*,scalar_t__) ;
 scalar_t__ kbd_attach (TYPE_1__*) ;
 int kbd_init_struct (TYPE_1__*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ kbd_register (TYPE_1__*) ;
 int kbd_set_maps (TYPE_1__*,int *,int *,int *,int) ;
 int key_map ;
 int kmi_attached ;
 int kmi_clear_state (TYPE_1__*) ;
 int pl050_kmi_intr ;
 int pl050_kmi_read_4 (struct kmi_softc*,int ) ;
 int pl050_kmi_write_4 (struct kmi_softc*,int ,int) ;

__attribute__((used)) static int
pl050_kmi_attach(device_t dev)
{
 struct kmi_softc *sc = device_get_softc(dev);
 keyboard_t *kbd;
 int rid;
 int i;
 uint32_t ack;

 sc->sc_dev = dev;
 kbd = &sc->sc_kbd;
 rid = 0;

 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }


 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "Error: could not allocate irq resources\n");
  return (ENXIO);
 }


 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_CLK,
   ((void*)0), pl050_kmi_intr, sc,
   &sc->sc_intr_hl) != 0) {
  bus_release_resource(dev, SYS_RES_IRQ, rid,
   sc->sc_irq_res);
  device_printf(dev, "Unable to setup the clock irq handler.\n");
  return (ENXIO);
 }



 pl050_kmi_write_4(sc, KMICR, KMICR_EN);

 pl050_kmi_write_4(sc, KMIDATA, SET_SCANCODE_SET);

 ack = pl050_kmi_read_4(sc, KMIDATA);

 pl050_kmi_write_4(sc, KMIDATA, 1);

 ack = pl050_kmi_read_4(sc, KMIDATA);

 pl050_kmi_write_4(sc, KMICR, KMICR_EN | KMICR_RXINTREN);

 kbd_init_struct(kbd, KMI_DRIVER_NAME, KB_OTHER,
   device_get_unit(dev), 0, 0, 0);
 kbd->kb_data = (void *)sc;

 sc->sc_keymap = key_map;
 sc->sc_accmap = accent_map;
 for (i = 0; i < KMI_NFKEY; i++) {
  sc->sc_fkeymap[i] = fkey_tab[i];
 }

 kbd_set_maps(kbd, &sc->sc_keymap, &sc->sc_accmap,
     sc->sc_fkeymap, KMI_NFKEY);

 KBD_FOUND_DEVICE(kbd);
 kmi_clear_state(kbd);
 KBD_PROBE_DONE(kbd);

 KBD_INIT_DONE(kbd);

 if (kbd_register(kbd) < 0) {
  goto detach;
 }
 KBD_CONFIG_DONE(kbd);







 if (bootverbose) {
  genkbd_diag(kbd, bootverbose);
 }
 kmi_attached = 1;
 return (0);

detach:
 return (ENXIO);

}
