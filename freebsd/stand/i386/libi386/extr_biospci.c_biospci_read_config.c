
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int eax; int edi; int ecx; int efl; int ebx; int addr; int ctl; } ;


 int PCI_INT ;
 int READ_CONFIG_BYTE ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 TYPE_1__ v86 ;
 int v86int () ;

int
biospci_read_config(uint32_t locator, int offset, int width, uint32_t *val)
{
 v86.ctl = V86_FLAGS;
 v86.addr = PCI_INT;
 v86.eax = READ_CONFIG_BYTE + width;
 v86.ebx = locator;
 v86.edi = offset;
 v86int();


 if (V86_CY(v86.efl) || (v86.eax & 0xff00))
  return (-1);

 *val = v86.ecx;
 return (0);
}
