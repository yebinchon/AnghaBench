
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_3__ {int id; scalar_t__ size; scalar_t__ address; } ;


 int cpu_dcache_wb_range (int ,int ) ;
 int cpu_icache_sync_range (int ,int ) ;
 int cpu_l2cache_wb_range (int ,int ) ;
 int dcache_wb_pou (int ,int ) ;
 int icache_inv_all () ;

int
elf_cpu_load_file(linker_file_t lf)
{
 if (lf->id == 1)
  return (0);




 cpu_dcache_wb_range((vm_offset_t)lf->address, (vm_size_t)lf->size);
 cpu_l2cache_wb_range((vm_offset_t)lf->address, (vm_size_t)lf->size);
 cpu_icache_sync_range((vm_offset_t)lf->address, (vm_size_t)lf->size);

 return (0);
}
