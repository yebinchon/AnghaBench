
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_gpio_softc {int dummy; } ;
typedef int device_t ;


 int FILTER_HANDLED ;
 int GPIO_DATA_IN ;
 int GPIO_INT_CAUSE ;
 int GPIO_INT_EDGE_MASK ;
 int GPIO_INT_LEV_MASK ;
 int MV_GPIO_LOCK () ;
 int MV_GPIO_UNLOCK () ;
 scalar_t__ device_get_softc (int ) ;
 int mv_gpio_exec_intr_handlers (int ,int,int ) ;
 int mv_gpio_reg_read (int ,int ) ;

__attribute__((used)) static int
mv_gpio_intr(device_t dev, void *arg)
{
 uint32_t int_cause, gpio_val;
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_LOCK();





 int_cause = mv_gpio_reg_read(dev, GPIO_INT_CAUSE);
 int_cause &= mv_gpio_reg_read(dev, GPIO_INT_EDGE_MASK);





 gpio_val = mv_gpio_reg_read(dev, GPIO_DATA_IN);
 gpio_val &= mv_gpio_reg_read(dev, GPIO_INT_LEV_MASK);

 mv_gpio_exec_intr_handlers(dev, int_cause | gpio_val, 0);

 MV_GPIO_UNLOCK();

 return (FILTER_HANDLED);
}
