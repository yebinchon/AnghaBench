
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {int eax; int edi; int efl; void* ecx; void* ebx; int addr; int ctl; } ;


 int PCI_INT ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 int WRITE_CONFIG_BYTE ;
 TYPE_1__ v86 ;
 int v86int () ;

int
biospci_write_config(uint32_t locator, int offset, int width, uint32_t val)
{
 v86.ctl = V86_FLAGS;
 v86.addr = PCI_INT;
 v86.eax = WRITE_CONFIG_BYTE + width;
 v86.ebx = locator;
 v86.edi = offset;
 v86.ecx = val;
 v86int();


 if (V86_CY(v86.efl) || (v86.eax & 0xff00))
  return (-1);

 return(0);
}
