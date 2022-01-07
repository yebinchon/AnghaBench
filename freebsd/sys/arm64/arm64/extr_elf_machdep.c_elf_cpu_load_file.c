
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_3__ {int id; int size; scalar_t__ address; } ;


 int cpu_icache_sync_range (int ,int ) ;

int
elf_cpu_load_file(linker_file_t lf)
{

 if (lf->id != 1)
  cpu_icache_sync_range((vm_offset_t)lf->address, lf->size);
 return (0);
}
