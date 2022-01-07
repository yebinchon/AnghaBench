
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int gicv3_its_bind_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static int
gicv3_its_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{


 gicv3_its_bind_intr(dev, isrc);

 return (0);
}
