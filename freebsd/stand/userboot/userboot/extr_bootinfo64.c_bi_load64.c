
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
struct userboot_devdesc {int dummy; } ;
struct preloaded_file {scalar_t__ f_addr; scalar_t__ f_size; struct preloaded_file* f_next; } ;
struct file_metadata {int md_data; } ;


 int EINVAL ;
 int MODINFOMD_ENVP ;
 int MODINFOMD_HOWTO ;
 int MODINFOMD_KERNEND ;
 int PAGE_SIZE ;
 int bcopy (int*,int ,int) ;
 int bi_checkcpu () ;
 scalar_t__ bi_copyenv (scalar_t__) ;
 scalar_t__ bi_copymodules64 (scalar_t__) ;
 int bi_getboothowto (char*) ;
 int bios_addsmapdata (struct preloaded_file*) ;
 int file_addmetadata (struct preloaded_file*,int ,int,int*) ;
 struct preloaded_file* file_findfile (int *,char*) ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 char* getenv (char*) ;
 int getrootmount (int ) ;
 int panic (char*) ;
 int printf (char*) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 int userboot_fmtdev (void*) ;
 int userboot_getdev (void**,char*,int *) ;

int
bi_load64(char *args, vm_offset_t *modulep, vm_offset_t *kernendp)
{
    struct preloaded_file *xp, *kfp;
    struct userboot_devdesc *rootdev;
    struct file_metadata *md;
    vm_offset_t addr;
    uint64_t kernend;
    uint64_t envp;
    vm_offset_t size;
    char *rootdevname;
    int howto;

    if (!bi_checkcpu()) {
 printf("CPU doesn't support long mode\n");
 return (EINVAL);
    }

    howto = bi_getboothowto(args);






    rootdevname = getenv("rootdev");
    userboot_getdev((void **)(&rootdev), rootdevname, ((void*)0));
    if (rootdev == ((void*)0)) {
 printf("can't determine root device\n");
 return(EINVAL);
    }


    getrootmount(userboot_fmtdev((void *)rootdev));


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
    bios_addsmapdata(kfp);


    *modulep = addr;
    size = bi_copymodules64(0);
    kernend = roundup(addr + size, PAGE_SIZE);
    *kernendp = kernend;


    md = file_findmetadata(kfp, MODINFOMD_KERNEND);
    bcopy(&kernend, md->md_data, sizeof kernend);


    (void)bi_copymodules64(addr);

    return(0);
}
