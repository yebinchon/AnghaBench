
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
struct preloaded_file {scalar_t__ f_addr; scalar_t__ f_size; struct preloaded_file* f_next; } ;
struct i386_devdesc {int dummy; } ;
struct file_metadata {int md_data; } ;


 int EINVAL ;
 int MODINFOMD_ENVP ;
 int MODINFOMD_HOWTO ;
 int MODINFOMD_KERNEND ;
 int MODINFOMD_MODULEP ;
 int PAGE_SIZE ;
 int bcopy (int*,int ,int) ;
 int bi_checkcpu () ;
 scalar_t__ bi_copyenv (int) ;
 scalar_t__ bi_copymodules64 (scalar_t__) ;
 int bi_getboothowto (char*) ;
 int bios_addsmapdata (struct preloaded_file*) ;
 int file_addmetadata (struct preloaded_file*,int ,int,int*) ;
 struct preloaded_file* file_findfile (int *,char*) ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 int geli_export_key_metadata (struct preloaded_file*) ;
 char* getenv (char*) ;
 int getrootmount (int ) ;
 int i386_fmtdev (void*) ;
 int i386_getdev (void**,char*,int *) ;
 int panic (char*) ;
 int printf (char*) ;
 scalar_t__ roundup (scalar_t__,int ) ;

int
bi_load64(char *args, vm_offset_t addr, vm_offset_t *modulep,
    vm_offset_t *kernendp, int add_smap)
{
    struct preloaded_file *xp, *kfp;
    struct i386_devdesc *rootdev;
    struct file_metadata *md;
    uint64_t kernend;
    uint64_t envp;
    uint64_t module;
    vm_offset_t size;
    char *rootdevname;
    int howto;

    if (!bi_checkcpu()) {
 printf("CPU doesn't support long mode\n");
 return (EINVAL);
    }

    howto = bi_getboothowto(args);






    rootdevname = getenv("rootdev");
    i386_getdev((void **)(&rootdev), rootdevname, ((void*)0));
    if (rootdev == ((void*)0)) {
 printf("can't determine root device\n");
 return(EINVAL);
    }


    getrootmount(i386_fmtdev((void *)rootdev));

    if (addr == 0) {

        for (xp = file_findfile(((void*)0), ((void*)0)); xp != ((void*)0); xp = xp->f_next) {
            if (addr < (xp->f_addr + xp->f_size))
                addr = xp->f_addr + xp->f_size;
        }
    }

    addr = roundup(addr, PAGE_SIZE);


    module = *modulep = addr;

    kfp = file_findfile(((void*)0), "elf kernel");
    if (kfp == ((void*)0))
      kfp = file_findfile(((void*)0), "elf64 kernel");
    if (kfp == ((void*)0))
 panic("can't find kernel file");
    kernend = 0;
    file_addmetadata(kfp, MODINFOMD_HOWTO, sizeof howto, &howto);
    file_addmetadata(kfp, MODINFOMD_ENVP, sizeof envp, &envp);
    file_addmetadata(kfp, MODINFOMD_KERNEND, sizeof kernend, &kernend);
    file_addmetadata(kfp, MODINFOMD_MODULEP, sizeof module, &module);
    if (add_smap != 0)
        bios_addsmapdata(kfp);




    size = bi_copymodules64(0);


    envp = roundup(addr + size, PAGE_SIZE);
    addr = bi_copyenv(envp);


    kernend = roundup(addr, PAGE_SIZE);
    *kernendp = kernend;


    md = file_findmetadata(kfp, MODINFOMD_KERNEND);
    bcopy(&kernend, md->md_data, sizeof kernend);


    md = file_findmetadata(kfp, MODINFOMD_ENVP);
    bcopy(&envp, md->md_data, sizeof envp);


    (void)bi_copymodules64(*modulep);

    return(0);
}
