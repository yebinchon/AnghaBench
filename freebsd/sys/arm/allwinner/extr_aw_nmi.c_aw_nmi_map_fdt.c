
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int pcell_t ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;




 int INTR_POLARITY_HIGH ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
aw_nmi_map_fdt(device_t dev, u_int ncells, pcell_t *cells, u_int *irqp,
    enum intr_polarity *polp, enum intr_trigger *trigp)
{
 u_int irq, tripol;
 enum intr_polarity pol;
 enum intr_trigger trig;

 if (ncells != 2) {
  device_printf(dev, "Invalid #interrupt-cells\n");
  return (EINVAL);
 }

 irq = cells[0];
 if (irq != 0) {
  device_printf(dev, "Controller only support irq 0\n");
  return (EINVAL);
 }

 tripol = cells[1];

 switch (tripol) {
 case 130:
  trig = INTR_TRIGGER_EDGE;
  pol = INTR_POLARITY_HIGH;
  break;
 case 131:
  trig = INTR_TRIGGER_EDGE;
  pol = INTR_POLARITY_LOW;
  break;
 case 129:
  trig = INTR_TRIGGER_LEVEL;
  pol = INTR_POLARITY_HIGH;
  break;
 case 128:
  trig = INTR_TRIGGER_LEVEL;
  pol = INTR_POLARITY_LOW;
  break;
 default:
  device_printf(dev, "unsupported trigger/polarity 0x%2x\n",
      tripol);
  return (ENOTSUP);
 }

 *irqp = irq;
 if (polp != ((void*)0))
  *polp = pol;
 if (trigp != ((void*)0))
  *trigp = trig;
 return (0);
}
