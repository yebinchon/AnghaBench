
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct preloaded_file {scalar_t__ f_addr; scalar_t__ f_size; struct preloaded_file* f_next; } ;
struct file_metadata {scalar_t__* md_data; } ;


 int MODINFOMD_DTBP ;
 int MODINFOMD_DTLB ;
 int MODINFOMD_DTLB_SLOTS ;
 int MODINFOMD_ENVP ;
 int MODINFOMD_ESYM ;
 int MODINFOMD_HOWTO ;
 int MODINFOMD_ITLB ;
 int MODINFOMD_ITLB_SLOTS ;
 int MODINFOMD_KERNEND ;
 int MODINFOMD_SSYM ;
 int PAGE_SIZE ;
 scalar_t__ __elfN (int ) ;
 int align ;
 int bcopy (scalar_t__*,scalar_t__*,int) ;
 int dtlb_slot ;
 int* dtlb_store ;
 scalar_t__ fdt_copy (scalar_t__) ;
 int file_addmetadata (struct preloaded_file*,int ,int,...) ;
 struct preloaded_file* file_findfile (int *,char*) ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 int geli_export_key_metadata (struct preloaded_file*) ;
 char* getenv (char*) ;
 int getrootmount (char*) ;
 int itlb_slot ;
 int* itlb_store ;
 scalar_t__ md_copyenv (scalar_t__) ;
 scalar_t__ md_copymodules (scalar_t__,int) ;
 int md_getboothowto (char*) ;
 int nitems (int *) ;
 int panic (char*) ;
 int relocation_offset ;
 scalar_t__ roundup (scalar_t__,int ) ;

__attribute__((used)) static int
md_load_dual(char *args, vm_offset_t *modulep, vm_offset_t *dtb, int kern64)
{
    struct preloaded_file *kfp;
    struct preloaded_file *xp;
    struct file_metadata *md;
    vm_offset_t kernend;
    vm_offset_t addr;
    vm_offset_t envp;



    vm_offset_t size;
    uint64_t scratch64;
    char *rootdevname;
    int howto;
    align = kern64 ? 8 : 4;
    howto = md_getboothowto(args);






    rootdevname = getenv("rootdev");
    if (rootdevname == ((void*)0))
 rootdevname = getenv("currdev");

    getrootmount(rootdevname);


    addr = 0;
    for (xp = file_findfile(((void*)0), ((void*)0)); xp != ((void*)0); xp = xp->f_next) {
 if (addr < (xp->f_addr + xp->f_size))
     addr = xp->f_addr + xp->f_size;
    }

    addr = roundup(addr, PAGE_SIZE);


    envp = addr;
    addr = md_copyenv(addr);


    addr = roundup(addr, PAGE_SIZE);
    kernend = 0;
    kfp = file_findfile(((void*)0), kern64 ? "elf64 kernel" : "elf32 kernel");
    if (kfp == ((void*)0))
 kfp = file_findfile(((void*)0), "elf kernel");
    if (kfp == ((void*)0))
 panic("can't find kernel file");
    file_addmetadata(kfp, MODINFOMD_HOWTO, sizeof howto, &howto);
    if (kern64) {
 scratch64 = envp;
 file_addmetadata(kfp, MODINFOMD_ENVP, sizeof scratch64, &scratch64);






 scratch64 = kernend;
 file_addmetadata(kfp, MODINFOMD_KERNEND,
  sizeof scratch64, &scratch64);
    } else {
 file_addmetadata(kfp, MODINFOMD_ENVP, sizeof envp, &envp);




 file_addmetadata(kfp, MODINFOMD_KERNEND, sizeof kernend, &kernend);
    }
    *modulep = addr;
    size = md_copymodules(0, kern64);
    kernend = roundup(addr + size, PAGE_SIZE);

    md = file_findmetadata(kfp, MODINFOMD_KERNEND);
    if (kern64) {
 scratch64 = kernend;
 bcopy(&scratch64, md->md_data, sizeof scratch64);
    } else {
 bcopy(&kernend, md->md_data, sizeof kernend);
    }
    (void)md_copymodules(addr, kern64);





    return(0);
}
