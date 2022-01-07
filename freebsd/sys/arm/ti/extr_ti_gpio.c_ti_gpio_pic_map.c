
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ti_gpio_softc {int dummy; } ;
struct intr_map_data_gpio {int dummy; } ;
struct intr_map_data_fdt {int dummy; } ;
struct intr_map_data {int type; } ;


 int ENOTSUP ;


 int ti_gpio_pic_map_fdt (struct ti_gpio_softc*,struct intr_map_data_fdt*,int *,int *) ;
 int ti_gpio_pic_map_gpio (struct ti_gpio_softc*,struct intr_map_data_gpio*,int *,int *) ;

__attribute__((used)) static int
ti_gpio_pic_map(struct ti_gpio_softc *sc, struct intr_map_data *data,
    u_int *irqp, uint32_t *modep)
{

 switch (data->type) {
 case 129:
  return (ti_gpio_pic_map_fdt(sc,
      (struct intr_map_data_fdt *)data, irqp, modep));
 case 128:
  return (ti_gpio_pic_map_gpio(sc,
      (struct intr_map_data_gpio *)data, irqp, modep));
 default:
  return (ENOTSUP);
 }
}
