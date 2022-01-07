
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int u_int ;


 int OF_call_method (char*,int ,int,int ,int ,int ,int ) ;
 int memory ;

__attribute__((used)) static void
release_phys(vm_offset_t phys, u_int size)
{

 (void)OF_call_method("release", memory, 3, 0, (uint32_t)phys,
     (uint32_t)(phys >> 32), size);
}
