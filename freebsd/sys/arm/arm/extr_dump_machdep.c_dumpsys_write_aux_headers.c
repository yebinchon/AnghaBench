
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dumperinfo {int dummy; } ;
typedef int phdr ;
struct TYPE_3__ {int p_align; scalar_t__ p_memsz; scalar_t__ p_filesz; int p_paddr; int p_vaddr; scalar_t__ p_offset; int p_flags; int p_type; } ;
typedef TYPE_1__ Elf_Phdr ;


 int KERNVIRTADDR ;
 int PAGE_SIZE ;
 int PF_R ;
 int PT_DUMP_DELTA ;
 int bzero (TYPE_1__*,int) ;
 int dumpsys_buf_write (struct dumperinfo*,char*,int) ;
 int pmap_kextract (int ) ;

int
dumpsys_write_aux_headers(struct dumperinfo *di)
{
 Elf_Phdr phdr;
 int error;

 bzero(&phdr, sizeof(phdr));
 phdr.p_type = PT_DUMP_DELTA;
 phdr.p_flags = PF_R;
 phdr.p_offset = 0;
 phdr.p_vaddr = KERNVIRTADDR;
 phdr.p_paddr = pmap_kextract(KERNVIRTADDR);
 phdr.p_filesz = 0;
 phdr.p_memsz = 0;
 phdr.p_align = PAGE_SIZE;

 error = dumpsys_buf_write(di, (char*)&phdr, sizeof(phdr));
 return (error);
}
