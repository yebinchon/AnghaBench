
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int COPYIN (int *,int ,int) ;
 int debugf (char*,int ) ;
 scalar_t__ fdt_fixup () ;
 int fdt_setup_fdtp () ;
 int * fdtp ;
 int fdtp_size ;
 int printf (char*) ;

int
fdt_copy(vm_offset_t va)
{
 int err;
 debugf("fdt_copy va 0x%08x\n", va);
 if (fdtp == ((void*)0)) {
  err = fdt_setup_fdtp();
  if (err) {
   printf("No valid device tree blob found!\n");
   return (0);
  }
 }

 if (fdt_fixup() == 0)
  return (0);

 COPYIN(fdtp, va, fdtp_size);
 return (fdtp_size);
}
