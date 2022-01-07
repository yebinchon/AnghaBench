
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct image_params {TYPE_1__* args; scalar_t__ image_header; } ;
typedef int boolean_t ;
struct TYPE_4__ {int e_flags; } ;
struct TYPE_3__ {int fname; } ;
typedef TYPE_2__ Elf_Ehdr ;


 scalar_t__ EF_ARM_EABI_FREEBSD_MIN ;
 scalar_t__ EF_ARM_EABI_VERSION (int ) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int uprintf (char*,scalar_t__,int ) ;

__attribute__((used)) static boolean_t
elf32_arm_abi_supported(struct image_params *imgp)
{
 const Elf_Ehdr *hdr = (const Elf_Ehdr *)imgp->image_header;




 if (EF_ARM_EABI_VERSION(hdr->e_flags) < EF_ARM_EABI_FREEBSD_MIN) {
  if (bootverbose)
   uprintf("Attempting to execute non EABI binary (rev %d) image %s",
       EF_ARM_EABI_VERSION(hdr->e_flags), imgp->args->fname);
  return (FALSE);
 }
 return (TRUE);
}
