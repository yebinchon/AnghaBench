
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct preloaded_file {int f_addr; int f_size; struct preloaded_file* f_next; } ;
struct file_metadata {int* md_data; } ;
struct devdesc {int dummy; } ;
struct TYPE_2__ {int (* arch_getdev ) (void**,char*,int *) ;} ;


 int EINVAL ;
 int MODINFOMD_DTBP ;
 int MODINFOMD_ENVP ;
 int MODINFOMD_ESYM ;
 int MODINFOMD_FW_HANDLE ;
 int MODINFOMD_HOWTO ;
 int MODINFOMD_KERNEND ;
 int MODINFOMD_SSYM ;
 int PAGE_SIZE ;
 int ST ;
 int __elfN (int ) ;
 TYPE_1__ archsw ;
 int bcopy (int*,int*,int) ;
 int bi_copyenv (int) ;
 int bi_copymodules (int) ;
 int bi_getboothowto (char*) ;
 int bi_load_efi_data (struct preloaded_file*) ;
 int efi_fmtdev (void*) ;
 int fdt_copy (int) ;
 int file_addmetadata (struct preloaded_file*,int ,int,int*) ;
 struct preloaded_file* file_findfile (int *,char*) ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 int geli_export_key_metadata (struct preloaded_file*) ;
 char* getenv (char*) ;
 int getrootmount (int ) ;
 size_t nitems (int *) ;
 int panic (char*) ;
 int printf (char*) ;
 int relocation_offset ;
 int roundup (int,int ) ;
 int stub1 (void**,char*,int *) ;

int
bi_load(char *args, vm_offset_t *modulep, vm_offset_t *kernendp)
{
 struct preloaded_file *xp, *kfp;
 struct devdesc *rootdev;
 struct file_metadata *md;
 vm_offset_t addr;
 uint64_t kernend;
 uint64_t envp;
 vm_offset_t size;
 char *rootdevname;
 int howto;
 howto = bi_getboothowto(args);






 rootdevname = getenv("rootdev");
 archsw.arch_getdev((void**)(&rootdev), rootdevname, ((void*)0));
 if (rootdev == ((void*)0)) {
  printf("Can't determine root device.\n");
  return(EINVAL);
 }


 getrootmount(efi_fmtdev((void *)rootdev));

 addr = 0;
 for (xp = file_findfile(((void*)0), ((void*)0)); xp != ((void*)0); xp = xp->f_next) {
  if (addr < (xp->f_addr + xp->f_size))
   addr = xp->f_addr + xp->f_size;
 }


 addr = roundup(addr, PAGE_SIZE);


 envp = addr;
 addr = bi_copyenv(addr);


 addr = roundup(addr, PAGE_SIZE);
 kfp = file_findfile(((void*)0), "elf kernel");
 if (kfp == ((void*)0))
  kfp = file_findfile(((void*)0), "elf64 kernel");
 if (kfp == ((void*)0))
  panic("can't find kernel file");
 kernend = 0;
 file_addmetadata(kfp, MODINFOMD_HOWTO, sizeof howto, &howto);
 file_addmetadata(kfp, MODINFOMD_ENVP, sizeof envp, &envp);







 file_addmetadata(kfp, MODINFOMD_KERNEND, sizeof kernend, &kernend);
 file_addmetadata(kfp, MODINFOMD_FW_HANDLE, sizeof ST, &ST);



 bi_load_efi_data(kfp);


 *modulep = addr;
 size = bi_copymodules(0);
 kernend = roundup(addr + size, PAGE_SIZE);
 *kernendp = kernend;


 md = file_findmetadata(kfp, MODINFOMD_KERNEND);
 bcopy(&kernend, md->md_data, sizeof kernend);
 (void)bi_copymodules(addr);

 return (0);
}
