
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_5__ {int sysvec; } ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;


 int _binary_cloudabi64_vdso_o_end ;
 int _binary_cloudabi64_vdso_o_start ;
 TYPE_1__ cloudabi64_brand ;
 int cloudabi_vdso_destroy (int ) ;
 int cloudabi_vdso_init (int ,int ,int ) ;
 int elf64_brand_inuse (TYPE_1__*) ;
 int elf64_insert_brand_entry (TYPE_1__*) ;
 int elf64_remove_brand_entry (TYPE_1__*) ;
 int printf (char*) ;

__attribute__((used)) static int
cloudabi64_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  cloudabi_vdso_init(cloudabi64_brand.sysvec,
      _binary_cloudabi64_vdso_o_start,
      _binary_cloudabi64_vdso_o_end);
  if (elf64_insert_brand_entry(&cloudabi64_brand) < 0) {
   printf("Failed to add CloudABI ELF brand handler\n");
   return (EINVAL);
  }
  return (0);
 case 128:
  if (elf64_brand_inuse(&cloudabi64_brand))
   return (EBUSY);
  if (elf64_remove_brand_entry(&cloudabi64_brand) < 0) {
   printf("Failed to remove CloudABI ELF brand handler\n");
   return (EINVAL);
  }
  cloudabi_vdso_destroy(cloudabi64_brand.sysvec);
  return (0);
 default:
  return (EOPNOTSUPP);
 }
}
