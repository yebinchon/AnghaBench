
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_ir_softc {int dev; scalar_t__ dcnt; int sc_evdev; } ;


 int AW_IR_RXINT_RAI_EN ;
 int AW_IR_RXINT_ROI_EN ;
 int AW_IR_RXINT_RPEI_EN ;
 int AW_IR_RXSTA ;
 int AW_IR_RXSTA_CLEARALL ;
 int AW_IR_RXSTA_COUNTER (int) ;
 int EV_MSC ;
 int MSC_SCAN ;
 int READ (struct aw_ir_softc*,int ) ;
 int WRITE (struct aw_ir_softc*,int ,int) ;
 scalar_t__ aw_ir_buf_full (struct aw_ir_softc*) ;
 int aw_ir_buf_reset (struct aw_ir_softc*) ;
 int aw_ir_buf_write (struct aw_ir_softc*,int ) ;
 unsigned long aw_ir_decode_packets (struct aw_ir_softc*) ;
 int aw_ir_read_data (struct aw_ir_softc*) ;
 int aw_ir_validate_code (unsigned long) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int evdev_push_event (int ,int ,int ,unsigned long) ;
 int evdev_sync (int ) ;

__attribute__((used)) static void
aw_ir_intr(void *arg)
{
 struct aw_ir_softc *sc;
 uint32_t val;
 int i, dcnt;
 unsigned long ir_code;
 int stat;

 sc = (struct aw_ir_softc *)arg;


 val = READ(sc, AW_IR_RXSTA);
 if (bootverbose)
  device_printf(sc->dev, "RX interrupt status: %x\n", val);


 WRITE(sc, AW_IR_RXSTA, val | AW_IR_RXSTA_CLEARALL);


 if (val & (AW_IR_RXINT_RAI_EN | AW_IR_RXINT_RPEI_EN)) {
  if (bootverbose)
   device_printf(sc->dev,
       "RX FIFO Data available or Packet end\n");

  dcnt = AW_IR_RXSTA_COUNTER(val);

  for (i = 0; i < dcnt; i++) {
   if (aw_ir_buf_full(sc)) {
    if (bootverbose)
     device_printf(sc->dev,
         "raw buffer full\n");
    break;
   } else
    aw_ir_buf_write(sc, aw_ir_read_data(sc));
  }
 }

 if (val & AW_IR_RXINT_RPEI_EN) {

  if (bootverbose)
   device_printf(sc->dev, "RX Packet end\n");
  ir_code = aw_ir_decode_packets(sc);
  stat = aw_ir_validate_code(ir_code);
  if (stat == 0) {
   evdev_push_event(sc->sc_evdev,
       EV_MSC, MSC_SCAN, ir_code);
   evdev_sync(sc->sc_evdev);
  }
  if (bootverbose) {
   device_printf(sc->dev, "Final IR code: %lx\n",
       ir_code);
   device_printf(sc->dev, "IR code status: %d\n",
       stat);
  }
  sc->dcnt = 0;
 }
 if (val & AW_IR_RXINT_ROI_EN) {

  if (bootverbose)
   device_printf(sc->dev, "RX FIFO overflow\n");

  aw_ir_buf_reset(sc);
 }
}
