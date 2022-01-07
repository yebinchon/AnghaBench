
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int arm_remove_irqhandler (int ,void*) ;
 int intr_teardown_irq (int ,struct resource*,void*) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
nexus_teardown_intr(device_t dev, device_t child, struct resource *r, void *ih)
{




 return (arm_remove_irqhandler(rman_get_start(r), ih));

}
