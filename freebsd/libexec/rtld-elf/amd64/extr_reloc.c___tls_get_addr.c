
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ti_offset; int ti_module; } ;
typedef TYPE_1__ tls_index ;
typedef int Elf_Addr ;


 void* tls_get_addr_common (int **,int ,int ) ;

void *__tls_get_addr(tls_index *ti)
{
    Elf_Addr** segbase;

    __asm __volatile("movq %%fs:0, %0" : "=r" (segbase));

    return tls_get_addr_common(&segbase[1], ti->ti_module, ti->ti_offset);
}
