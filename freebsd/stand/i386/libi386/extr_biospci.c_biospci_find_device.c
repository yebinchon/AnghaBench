
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int eax; int edx; int ecx; int esi; int ebx; int efl; int addr; int ctl; } ;


 int FIND_PCI_DEVICE ;
 int PCI_INT ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static int
biospci_find_device(uint32_t devid, int index, uint32_t *locator)
{
 v86.ctl = V86_FLAGS;
 v86.addr = PCI_INT;
 v86.eax = FIND_PCI_DEVICE;
 v86.edx = devid & 0xffff;
 v86.ecx = (devid >> 16) & 0xffff;
 v86.esi = index;
 v86int();


 if (V86_CY(v86.efl) || (v86.eax & 0xff00))
  return (-1);

 *locator = v86.ebx;
 return (0);
}
