
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct preloaded_file {int f_args; } ;
struct file_metadata {int md_data; } ;
struct TYPE_2__ {int e_entry; } ;
typedef TYPE_1__ Elf_Ehdr ;


 int EFTYPE ;
 int MODINFOMD_ELFHDR ;
 int __exec (void*,int,int,int ,int ,int ,int,int,int) ;
 int bi_load (int ,int*,int*) ;
 int dev_cleanup () ;
 int efi_time_fini () ;
 int efi_time_init () ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 int panic (char*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
elf32_exec(struct preloaded_file *fp)
{
    struct file_metadata *md;
    Elf_Ehdr *ehdr;
    vm_offset_t entry, bootinfop, modulep, kernend;
    int boothowto, err, bootdev;

    if ((md = file_findmetadata(fp, MODINFOMD_ELFHDR)) == ((void*)0))
 return(EFTYPE);
    ehdr = (Elf_Ehdr *)&(md->md_data);

    efi_time_fini();

    entry = ehdr->e_entry & 0xffffff;

    printf("Start @ 0x%x ...\n", entry);

    err = bi_load(fp->f_args, &modulep, &kernend);
    if (err != 0) {
 efi_time_init();
 return(err);
    }




    dev_cleanup();
    __exec((void *)entry, boothowto, bootdev, 0, 0, 0, bootinfop, modulep, kernend);

    panic("exec returned");
}
