
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int platform_t ;
struct TYPE_3__ {int pd_va; int pd_pa; int pd_size; } ;


 int devmap_register_table (TYPE_1__*) ;
 TYPE_1__* fdt_devmap ;

__attribute__((used)) static int
versatile_devmap_init(platform_t plat)
{
 int i = 0;
 fdt_devmap[i].pd_va = 0xf0100000;
 fdt_devmap[i].pd_pa = 0x10100000;
 fdt_devmap[i].pd_size = 0x01000000;

 devmap_register_table(&fdt_devmap[0]);
 return (0);
}
