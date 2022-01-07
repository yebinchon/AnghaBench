
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {scalar_t__ bgi_irq; scalar_t__ bgi_mode; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 int bcm_gpio_pic_config_intr (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*,scalar_t__) ;
 scalar_t__ bcm_gpio_pic_map (struct bcm_gpio_softc*,struct intr_map_data*,scalar_t__*,scalar_t__*) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_gpio_pic_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 u_int irq;
 uint32_t mode;
 struct bcm_gpio_softc *sc;
 struct bcm_gpio_irqsrc *bgi;

 if (data == ((void*)0))
  return (ENOTSUP);

 sc = device_get_softc(dev);
 bgi = (struct bcm_gpio_irqsrc *)isrc;


 if (bcm_gpio_pic_map(sc, data, &irq, &mode) != 0 || bgi->bgi_irq != irq)
  return (EINVAL);





 if (isrc->isrc_handlers != 0)
  return (bgi->bgi_mode == mode ? 0 : EINVAL);

 bcm_gpio_pic_config_intr(sc, bgi, mode);
 return (0);
}
