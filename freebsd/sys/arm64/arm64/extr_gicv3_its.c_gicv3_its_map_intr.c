
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int panic (char*) ;

__attribute__((used)) static int
gicv3_its_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{





 panic("gicv3_its_map_intr: Unable to map a MSI interrupt");
}
