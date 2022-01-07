
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIB_ALLOC_MSI (int ,int ,int,int,int*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
thunder_pem_alloc_msi(device_t pci, device_t child, int count, int maxcount,
    int *irqs)
{
 device_t bus;

 bus = device_get_parent(pci);
 return (PCIB_ALLOC_MSI(device_get_parent(bus), child, count, maxcount,
     irqs));
}
