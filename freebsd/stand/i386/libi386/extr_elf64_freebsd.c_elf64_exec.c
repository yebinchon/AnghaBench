
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct preloaded_file {int f_args; } ;
struct file_metadata {int md_data; } ;
typedef int p4_entry_t ;
typedef int p3_entry_t ;
struct TYPE_2__ {int e_entry; } ;
typedef TYPE_1__ Elf_Ehdr ;


 int EFTYPE ;
 int MODINFOMD_ELFHDR ;
 int PAGE_SIZE ;
 int PG_PS ;
 int PG_RW ;
 int PG_U ;
 int PG_V ;
 int* PT2 ;
 int* PT3 ;
 int* PT4 ;
 scalar_t__ VTOP (uintptr_t) ;
 int __exec (void*,int ,int ) ;
 uintptr_t amd64_tramp ;
 int bi_load64 (int ,int ,int *,int *,int) ;
 int bzero (int*,int ) ;
 int dev_cleanup () ;
 int entry_hi ;
 int entry_lo ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 int panic (char*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
elf64_exec(struct preloaded_file *fp)
{
    struct file_metadata *md;
    Elf_Ehdr *ehdr;
    vm_offset_t modulep, kernend;
    int err;
    int i;

    if ((md = file_findmetadata(fp, MODINFOMD_ELFHDR)) == ((void*)0))
 return(EFTYPE);
    ehdr = (Elf_Ehdr *)&(md->md_data);

    err = bi_load64(fp->f_args, 0, &modulep, &kernend, 1);
    if (err != 0)
 return(err);

    bzero(PT4, PAGE_SIZE);
    bzero(PT3, PAGE_SIZE);
    bzero(PT2, PAGE_SIZE);





    for (i = 0; i < 512; i++) {

 PT4[i] = (p4_entry_t)VTOP((uintptr_t)&PT3[0]);
 PT4[i] |= PG_V | PG_RW | PG_U;


 PT3[i] = (p3_entry_t)VTOP((uintptr_t)&PT2[0]);
 PT3[i] |= PG_V | PG_RW | PG_U;


 PT2[i] = i * (2 * 1024 * 1024);
 PT2[i] |= PG_V | PG_RW | PG_PS | PG_U;
    }

    entry_lo = ehdr->e_entry & 0xffffffff;
    entry_hi = (ehdr->e_entry >> 32) & 0xffffffff;




    dev_cleanup();
    __exec((void *)VTOP(amd64_tramp), modulep, kernend);

    panic("exec returned");
}
