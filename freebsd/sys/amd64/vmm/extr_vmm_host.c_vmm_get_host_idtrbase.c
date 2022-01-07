
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int rd_base; } ;


 TYPE_1__ r_idt ;

uint64_t
vmm_get_host_idtrbase(void)
{

 return (r_idt.rd_base);
}
