
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


 int _binary_cloudabi32_vdso_o_end ;
 int _binary_cloudabi32_vdso_o_start ;
 TYPE_1__ cloudabi32_brand ;
 int cloudabi_vdso_destroy (int ) ;
 int cloudabi_vdso_init (int ,int ,int ) ;
 int elf32_brand_inuse (TYPE_1__*) ;
 int elf32_insert_brand_entry (TYPE_1__*) ;
 int elf32_remove_brand_entry (TYPE_1__*) ;
 int printf (char*) ;

__attribute__((used)) static int
cloudabi32_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  cloudabi_vdso_init(cloudabi32_brand.sysvec,
      _binary_cloudabi32_vdso_o_start,
      _binary_cloudabi32_vdso_o_end);
  if (elf32_insert_brand_entry(&cloudabi32_brand) < 0) {
   printf("Failed to add CloudABI ELF brand handler\n");
   return (EINVAL);
  }
  return (0);
 case 128:
  if (elf32_brand_inuse(&cloudabi32_brand))
   return (EBUSY);
  if (elf32_remove_brand_entry(&cloudabi32_brand) < 0) {
   printf("Failed to remove CloudABI ELF brand handler\n");
   return (EINVAL);
  }
  cloudabi_vdso_destroy(cloudabi32_brand.sysvec);
  return (0);
 default:
  return (EOPNOTSUPP);
 }
}
