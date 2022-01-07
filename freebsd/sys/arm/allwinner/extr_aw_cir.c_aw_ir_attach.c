
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_ir_softc {int fifo_size; int * res; int * sc_evdev; int dev; int intrhand; } ;
typedef int * hwreset_t ;
typedef int device_t ;
typedef int * clk_t ;
struct TYPE_2__ {int ocd_data; } ;




 int AW_IR_ACTIVE_T ;
 int AW_IR_ACTIVE_T_C ;
 int AW_IR_BASE_CLK ;
 int AW_IR_CIR ;
 int AW_IR_CTL ;
 int AW_IR_CTL_GEN ;
 int AW_IR_CTL_MD ;
 int AW_IR_CTL_RXEN ;
 int AW_IR_RXCTL ;
 int AW_IR_RXCTL_RPPI ;
 int AW_IR_RXFILT_VAL ;
 int AW_IR_RXIDLE_VAL ;
 int AW_IR_RXINT ;
 int AW_IR_RXINT_RAI_EN ;
 int AW_IR_RXINT_RAL (int) ;
 int AW_IR_RXINT_ROI_EN ;
 int AW_IR_RXINT_RPEI_EN ;
 int AW_IR_RXSTA ;
 int AW_IR_RXSTA_CLEARALL ;
 int AW_IR_SAMPLE_128 ;
 int BUS_HOST ;
 int ENXIO ;
 int EV_MSC ;
 int EV_SYN ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MSC_SCAN ;
 int READ (struct aw_ir_softc*,int ) ;
 int WRITE (struct aw_ir_softc*,int ,int) ;
 int aw_ir_buf_reset (struct aw_ir_softc*) ;
 int aw_ir_intr ;
 int aw_ir_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct aw_ir_softc*,int *) ;
 int clk_enable (int *) ;
 int clk_get_by_ofw_name (int ,int ,char*,int **) ;
 int clk_release (int *) ;
 int clk_set_freq (int *,int ,int ) ;
 int compat_data ;
 int device_get_desc (int ) ;
 int device_get_nameunit (int ) ;
 struct aw_ir_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int * evdev_alloc () ;
 int evdev_free (int *) ;
 int evdev_register (int *) ;
 int evdev_set_id (int *,int ,int ,int ,int ) ;
 int evdev_set_name (int *,int ) ;
 int evdev_set_phys (int *,int ) ;
 int evdev_support_event (int *,int ) ;
 int evdev_support_msc (int *,int ) ;
 int hwreset_deassert (int *) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int ,int **) ;
 int hwreset_release (int *) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
aw_ir_attach(device_t dev)
{
 struct aw_ir_softc *sc;
 hwreset_t rst_apb;
 clk_t clk_ir, clk_gate;
 int err;
 uint32_t val = 0;

 clk_ir = clk_gate = ((void*)0);
 rst_apb = ((void*)0);

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, aw_ir_spec, sc->res) != 0) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }

 switch (ofw_bus_search_compatible(dev, compat_data)->ocd_data) {
 case 129:
  sc->fifo_size = 16;
  break;
 case 128:
  sc->fifo_size = 64;
  break;
 }


 if (hwreset_get_by_ofw_idx(dev, 0, 0, &rst_apb) == 0) {
  err = hwreset_deassert(rst_apb);
  if (err != 0) {
   device_printf(dev, "cannot de-assert reset\n");
   goto error;
  }
 }


 aw_ir_buf_reset(sc);


 err = clk_get_by_ofw_name(dev, 0, "apb", &clk_gate);
 if (err != 0) {
  device_printf(dev, "Cannot get gate clock\n");
  goto error;
 }
 err = clk_get_by_ofw_name(dev, 0, "ir", &clk_ir);
 if (err != 0) {
  device_printf(dev, "Cannot get IR clock\n");
  goto error;
 }

 err = clk_set_freq(clk_ir, AW_IR_BASE_CLK, 0);
 if (err != 0) {
  device_printf(dev, "cannot set IR clock rate\n");
  goto error;
 }

 err = clk_enable(clk_gate);
 if (err != 0) {
  device_printf(dev, "Cannot enable clk gate\n");
  goto error;
 }
 err = clk_enable(clk_ir);
 if (err != 0) {
  device_printf(dev, "Cannot enable IR clock\n");
  goto error;
 }

 if (bus_setup_intr(dev, sc->res[1],
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), aw_ir_intr, sc,
     &sc->intrhand)) {
  bus_release_resources(dev, aw_ir_spec, sc->res);
  device_printf(dev, "cannot setup interrupt handler\n");
  return (ENXIO);
 }


 WRITE(sc, AW_IR_CTL, AW_IR_CTL_MD);





 val = AW_IR_SAMPLE_128;
 val |= (AW_IR_RXFILT_VAL | AW_IR_RXIDLE_VAL);
 val |= (AW_IR_ACTIVE_T | AW_IR_ACTIVE_T_C);
 WRITE(sc, AW_IR_CIR, val);


 WRITE(sc, AW_IR_RXCTL, AW_IR_RXCTL_RPPI);


 WRITE(sc, AW_IR_RXSTA, AW_IR_RXSTA_CLEARALL);






 WRITE(sc, AW_IR_RXINT, AW_IR_RXINT_ROI_EN | AW_IR_RXINT_RPEI_EN |
     AW_IR_RXINT_RAI_EN | AW_IR_RXINT_RAL((sc->fifo_size >> 1) - 1));


 val = READ(sc, AW_IR_CTL);
 WRITE(sc, AW_IR_CTL, val | AW_IR_CTL_GEN | AW_IR_CTL_RXEN);

 sc->sc_evdev = evdev_alloc();
 evdev_set_name(sc->sc_evdev, device_get_desc(sc->dev));
 evdev_set_phys(sc->sc_evdev, device_get_nameunit(sc->dev));
 evdev_set_id(sc->sc_evdev, BUS_HOST, 0, 0, 0);
 evdev_support_event(sc->sc_evdev, EV_SYN);
 evdev_support_event(sc->sc_evdev, EV_MSC);
 evdev_support_msc(sc->sc_evdev, MSC_SCAN);

 err = evdev_register(sc->sc_evdev);
 if (err) {
  device_printf(dev,
      "failed to register evdev: error=%d\n", err);
  goto error;
 }

 return (0);
error:
 if (clk_gate != ((void*)0))
  clk_release(clk_gate);
 if (clk_ir != ((void*)0))
  clk_release(clk_ir);
 if (rst_apb != ((void*)0))
  hwreset_release(rst_apb);
 evdev_free(sc->sc_evdev);
 sc->sc_evdev = ((void*)0);

 bus_release_resources(dev, aw_ir_spec, sc->res);
 return (ENXIO);
}
