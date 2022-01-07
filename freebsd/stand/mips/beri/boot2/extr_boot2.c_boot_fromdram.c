
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_entry; } ;
typedef TYPE_1__ Elf64_Ehdr ;


 void* DRAM_KERNEL_ADDR ;
 int IS_ELF (TYPE_1__) ;
 int beri_argc ;
 int beri_argv ;
 int beri_envv ;
 int boot (void*,int ,int ,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
boot_fromdram(void)
{
    void *kaddr = DRAM_KERNEL_ADDR;
    Elf64_Ehdr *ehp = kaddr;

    if (!IS_ELF(*ehp)) {
 printf("Invalid %s\n", "format");
 return;
    }
    boot((void *)ehp->e_entry, beri_argc, beri_argv, beri_envv);
}
