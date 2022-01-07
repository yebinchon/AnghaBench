
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ti_gpio_softc {int dummy; } ;
struct ti_gpio_irqsrc {scalar_t__ tgi_mode; int tgi_mask; } ;


 scalar_t__ GPIO_INTR_EDGE_BOTH ;
 scalar_t__ GPIO_INTR_EDGE_FALLING ;
 scalar_t__ GPIO_INTR_EDGE_RISING ;
 scalar_t__ GPIO_INTR_LEVEL_HIGH ;
 scalar_t__ GPIO_INTR_LEVEL_LOW ;
 int TI_GPIO_FALLINGDETECT ;
 int TI_GPIO_LEVELDETECT0 ;
 int TI_GPIO_LEVELDETECT1 ;
 int TI_GPIO_LOCK (struct ti_gpio_softc*) ;
 int TI_GPIO_RISINGDETECT ;
 int TI_GPIO_UNLOCK (struct ti_gpio_softc*) ;
 int ti_gpio_rwreg_modify (struct ti_gpio_softc*,int ,int ,int) ;

__attribute__((used)) static void
ti_gpio_pic_config_intr(struct ti_gpio_softc *sc, struct ti_gpio_irqsrc *tgi,
    uint32_t mode)
{

 TI_GPIO_LOCK(sc);
 ti_gpio_rwreg_modify(sc, TI_GPIO_RISINGDETECT, tgi->tgi_mask,
     mode == GPIO_INTR_EDGE_RISING || mode == GPIO_INTR_EDGE_BOTH);
 ti_gpio_rwreg_modify(sc, TI_GPIO_FALLINGDETECT, tgi->tgi_mask,
     mode == GPIO_INTR_EDGE_FALLING || mode == GPIO_INTR_EDGE_BOTH);
 ti_gpio_rwreg_modify(sc, TI_GPIO_LEVELDETECT1, tgi->tgi_mask,
     mode == GPIO_INTR_LEVEL_HIGH);
 ti_gpio_rwreg_modify(sc, TI_GPIO_LEVELDETECT0, tgi->tgi_mask,
     mode == GPIO_INTR_LEVEL_LOW);
 tgi->tgi_mode = mode;
 TI_GPIO_UNLOCK(sc);
}
