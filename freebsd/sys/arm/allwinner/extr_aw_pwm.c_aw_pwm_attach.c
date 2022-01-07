
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct aw_pwm_softc {int clk_freq; int enabled; int period; int duty; int busdev; int res; int clk; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int AW_PWM_CTRL ;
 int AW_PWM_CTRL_EN ;
 int AW_PWM_CTRL_GATE ;
 int AW_PWM_CTRL_PRESCALE_MASK ;
 int AW_PWM_PERIOD ;
 int AW_PWM_PERIOD_ACTIVE_MASK ;
 int AW_PWM_PERIOD_ACTIVE_SHIFT ;
 int AW_PWM_PERIOD_TOTAL_MASK ;
 int AW_PWM_PERIOD_TOTAL_SHIFT ;
 int AW_PWM_READ (struct aw_pwm_softc*,int ) ;
 int ENXIO ;
 int NS_PER_SEC ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int* aw_pwm_clk_prescaler ;
 int aw_pwm_detach (int ) ;
 int aw_pwm_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_index (int ,int ,int ,int *) ;
 int clk_get_freq (int ,int*) ;
 int device_add_child (int ,char*,int) ;
 struct aw_pwm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int nitems (int*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
aw_pwm_attach(device_t dev)
{
 struct aw_pwm_softc *sc;
 uint64_t clk_freq;
 uint32_t reg;
 phandle_t node;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 error = clk_get_by_ofw_index(dev, 0, 0, &sc->clk);
 if (error != 0) {
  device_printf(dev, "cannot get clock\n");
  goto fail;
 }
 error = clk_enable(sc->clk);
 if (error != 0) {
  device_printf(dev, "cannot enable clock\n");
  goto fail;
 }

 error = clk_get_freq(sc->clk, &sc->clk_freq);
 if (error != 0) {
  device_printf(dev, "cannot get clock frequency\n");
  goto fail;
 }

 if (bus_alloc_resources(dev, aw_pwm_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  error = ENXIO;
  goto fail;
 }


 reg = AW_PWM_READ(sc, AW_PWM_CTRL);
 if (reg & (AW_PWM_CTRL_GATE | AW_PWM_CTRL_EN))
  sc->enabled = 1;

 reg = AW_PWM_READ(sc, AW_PWM_CTRL);
 reg &= AW_PWM_CTRL_PRESCALE_MASK;
 if (reg > nitems(aw_pwm_clk_prescaler)) {
  device_printf(dev, "Bad prescaler %x, cannot guess current settings\n", reg);
  goto skipcfg;
 }
 clk_freq = sc->clk_freq / aw_pwm_clk_prescaler[reg];

 reg = AW_PWM_READ(sc, AW_PWM_PERIOD);
 sc->period = NS_PER_SEC /
  (clk_freq / ((reg >> AW_PWM_PERIOD_TOTAL_SHIFT) & AW_PWM_PERIOD_TOTAL_MASK));
 sc->duty = NS_PER_SEC /
  (clk_freq / ((reg >> AW_PWM_PERIOD_ACTIVE_SHIFT) & AW_PWM_PERIOD_ACTIVE_MASK));

skipcfg:




 node = ofw_bus_get_node(dev);
 OF_device_register_xref(OF_xref_from_node(node), dev);

 sc->busdev = device_add_child(dev, "pwmbus", -1);

 return (bus_generic_attach(dev));

fail:
 aw_pwm_detach(dev);
 return (error);
}
