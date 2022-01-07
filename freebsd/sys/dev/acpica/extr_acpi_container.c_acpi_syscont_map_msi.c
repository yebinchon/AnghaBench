
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int device_t ;


 int PCIB_MAP_MSI (int ,int ,int,int *,int *) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
acpi_syscont_map_msi(device_t bus, device_t dev, int irq, uint64_t *addr,
    uint32_t *data)
{
    device_t parent = device_get_parent(bus);

    return (PCIB_MAP_MSI(device_get_parent(parent), dev, irq, addr, data));
}
