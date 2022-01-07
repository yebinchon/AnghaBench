
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int device_t ;
typedef int delay ;


 int EDOM ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
awg_parse_delay(device_t dev, uint32_t *tx_delay, uint32_t *rx_delay)
{
 phandle_t node;
 uint32_t delay;

 if (tx_delay == ((void*)0) || rx_delay == ((void*)0))
  return (EINVAL);
 *tx_delay = *rx_delay = 0;
 node = ofw_bus_get_node(dev);

 if (OF_getencprop(node, "tx-delay", &delay, sizeof(delay)) >= 0)
  *tx_delay = delay;
 else if (OF_getencprop(node, "allwinner,tx-delay-ps", &delay,
     sizeof(delay)) >= 0) {
  if ((delay % 100) != 0) {
   device_printf(dev, "tx-delay-ps is not a multiple of 100\n");
   return (EDOM);
  }
  *tx_delay = delay / 100;
 }
 if (*tx_delay > 7) {
  device_printf(dev, "tx-delay out of range\n");
  return (ERANGE);
 }

 if (OF_getencprop(node, "rx-delay", &delay, sizeof(delay)) >= 0)
  *rx_delay = delay;
 else if (OF_getencprop(node, "allwinner,rx-delay-ps", &delay,
     sizeof(delay)) >= 0) {
  if ((delay % 100) != 0) {
   device_printf(dev, "rx-delay-ps is not within documented domain\n");
   return (EDOM);
  }
  *rx_delay = delay / 100;
 }
 if (*rx_delay > 31) {
  device_printf(dev, "rx-delay out of range\n");
  return (ERANGE);
 }

 return (0);
}
