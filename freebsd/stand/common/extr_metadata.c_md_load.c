
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int md_load_dual (char*,int *,int *,int ) ;

int
md_load(char *args, vm_offset_t *modulep, vm_offset_t *dtb)
{
    return (md_load_dual(args, modulep, dtb, 0));
}
