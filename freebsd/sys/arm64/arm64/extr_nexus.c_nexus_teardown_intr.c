
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int intr_teardown_irq (int ,struct resource*,void*) ;

__attribute__((used)) static int
nexus_teardown_intr(device_t dev, device_t child, struct resource *r, void *ih)
{

 return (intr_teardown_irq(child, r, ih));
}
