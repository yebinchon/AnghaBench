
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_hpet_cap {int capabilities; } ;


 int vhpet_capabilities () ;

int
vhpet_getcap(struct vm_hpet_cap *cap)
{

 cap->capabilities = vhpet_capabilities();
 return (0);
}
