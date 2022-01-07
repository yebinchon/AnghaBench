
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
struct preloaded_file {char* f_args; } ;
struct file_metadata {int md_data; } ;
struct TYPE_2__ {int e_flags; scalar_t__ e_entry; } ;
typedef TYPE_1__ Elf_Ehdr ;


 int EFTYPE ;
 int MODINFOMD_ELFHDR ;
 int dev_cleanup () ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 int md_load64 (char*,scalar_t__*,scalar_t__*) ;
 int panic (char*) ;
 int printf (char*,char*) ;
 void stub1 (void*) ;

int
ppc64_uboot_elf_exec(struct preloaded_file *fp)
{
 struct file_metadata *fmp;
 vm_offset_t mdp, dtbp;
 Elf_Ehdr *e;
 int error;
 void (*entry)(void *);

 if ((fmp = file_findmetadata(fp, MODINFOMD_ELFHDR)) == ((void*)0)) {
  return(EFTYPE);
 }
 e = (Elf_Ehdr *)&fmp->md_data;


 if ((e->e_flags & 3) == 2)
  entry = (void (*)(void*))(intptr_t)e->e_entry;
 else
  entry = *(void (*)(void*))(uint64_t *)(intptr_t)e->e_entry;

 if ((error = md_load64(fp->f_args, &mdp, &dtbp)) != 0)
  return (error);

 dev_cleanup();
 printf("Kernel args: %s\n", fp->f_args);

 (*entry)((void *)mdp);
 panic("exec returned");
}
