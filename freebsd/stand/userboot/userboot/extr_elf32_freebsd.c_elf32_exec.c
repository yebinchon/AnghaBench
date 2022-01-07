
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint32_t ;
struct preloaded_file {int f_args; } ;
struct file_metadata {int md_data; } ;
typedef int stack ;
struct TYPE_2__ {int e_entry; } ;
typedef TYPE_1__ Elf_Ehdr ;


 int CALLBACK (int ,...) ;
 int EFTYPE ;
 int GUEST_GDT ;
 scalar_t__ GUEST_STACK ;
 int MODINFOMD_ELFHDR ;
 int bi_load32 (int ,int*,int*,int*,int*,int*) ;
 int copyin ;
 int dev_cleanup () ;
 int exec ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 int memset (int*,int ,int) ;
 int panic (char*) ;
 int printf (char*,int) ;
 int setgdt ;
 int setreg ;

__attribute__((used)) static int
elf32_exec(struct preloaded_file *fp)
{
 struct file_metadata *md;
 Elf_Ehdr *ehdr;
 vm_offset_t entry, bootinfop, modulep, kernend;
 int boothowto, err, bootdev;
 uint32_t stack[1024], *sp;


 if ((md = file_findmetadata(fp, MODINFOMD_ELFHDR)) == ((void*)0))
  return(EFTYPE);
 ehdr = (Elf_Ehdr *)&(md->md_data);

 err = bi_load32(fp->f_args, &boothowto, &bootdev, &bootinfop, &modulep, &kernend);
 if (err != 0)
  return(err);
 entry = ehdr->e_entry & 0xffffff;





 dev_cleanup();




 memset(stack, 0, sizeof(stack));
 sp = (uint32_t *)((char *)stack + sizeof(stack));
 *--sp = kernend;
 *--sp = modulep;
 *--sp = bootinfop;
 *--sp = 0;
 *--sp = 0;
 *--sp = 0;
 *--sp = bootdev;
 *--sp = boothowto;





 *--sp = 0xbeefface;
 CALLBACK(copyin, stack, GUEST_STACK, sizeof(stack));
 CALLBACK(setreg, 4, (char *)sp - (char *)stack + GUEST_STACK);

 CALLBACK(setgdt, GUEST_GDT, 8 * 4 - 1);

        CALLBACK(exec, entry);

 panic("exec returned");
}
