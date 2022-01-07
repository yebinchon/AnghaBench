
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int BUS_TEARDOWN_INTR (int ,int ,struct resource*,void*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
versatile_pci_teardown_intr(device_t dev, device_t child, struct resource *ires,
    void *cookie)
{

 return BUS_TEARDOWN_INTR(device_get_parent(dev), dev, ires, cookie);
}
