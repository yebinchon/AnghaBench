
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uintmax_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct trampoline_data {void* mdp; void* dtb; void* kernel_entry; void* mdp_size; void* of_entry; void* phys_mem_offset; } ;
struct preloaded_file {int f_args; } ;
struct file_metadata {int md_data; } ;
struct TYPE_4__ {int (* arch_loadaddr ) (int ,int *,int ) ;int (* arch_kexec_kseg_get ) (int*,void**) ;int (* arch_copyin ) (int *,int,int ) ;int (* arch_copyout ) (int,int*,int) ;} ;
struct TYPE_3__ {int e_flags; int e_entry; } ;
typedef TYPE_1__ Elf_Ehdr ;


 int EFTYPE ;
 int LOAD_RAW ;
 int MODINFOMD_ELFHDR ;
 TYPE_2__ archsw ;
 int be32toh (void*) ;
 int be64toh (int) ;
 int dev_cleanup () ;
 int elf64_relocation_offset ;
 struct file_metadata* file_findmetadata (struct preloaded_file*,int ) ;
 int free (int *) ;
 int host_reboot (int,int,int,uintptr_t) ;
 void* htobe32 (int) ;
 int kerneltramp ;
 int kexec_load (int,int,uintptr_t) ;
 int * malloc (int ) ;
 int md_load64 (int ,int*,int*) ;
 int memcpy (int *,int *,int ) ;
 int panic (char*,...) ;
 int printf (char*,int,...) ;
 int stub1 (int ,int *,int ) ;
 int stub2 (int,int*,int) ;
 int stub3 (int *,int,int ) ;
 int stub4 (int*,void**) ;
 int szkerneltramp ;

int
ppc64_elf_exec(struct preloaded_file *fp)
{
 struct file_metadata *fmp;
 vm_offset_t mdp, dtb;
 Elf_Ehdr *e;
 int error;
 uint32_t *trampoline;
 uint64_t entry;
 uint64_t trampolinebase;
 struct trampoline_data *trampoline_data;
 int nseg;
 void *kseg;

 if ((fmp = file_findmetadata(fp, MODINFOMD_ELFHDR)) == ((void*)0)) {
  return(EFTYPE);
 }
 e = (Elf_Ehdr *)&fmp->md_data;
 trampolinebase = archsw.arch_loadaddr(LOAD_RAW, ((void*)0), 0);
 printf("Load address at %#jx\n", (uintmax_t)trampolinebase);
 printf("Relocation offset is %#jx\n", (uintmax_t)elf64_relocation_offset);


 trampoline = malloc(szkerneltramp);
 memcpy(trampoline, &kerneltramp, szkerneltramp);


 if ((e->e_flags & 3) == 2)
  entry = e->e_entry;
 else {
  archsw.arch_copyout(e->e_entry + elf64_relocation_offset,
      &entry, 8);
  entry = be64toh(entry);
 }





 trampoline_data = (void*)&trampoline[2];
 trampoline_data->kernel_entry = htobe32(entry + elf64_relocation_offset);
 trampoline_data->phys_mem_offset = htobe32(0);
 trampoline_data->of_entry = htobe32(0);

 if ((error = md_load64(fp->f_args, &mdp, &dtb)) != 0)
  return (error);

 trampoline_data->dtb = htobe32(dtb);
 trampoline_data->mdp = htobe32(mdp);
 trampoline_data->mdp_size = htobe32(0xfb5d104d);

 printf("Kernel entry at %#jx (%#x) ...\n",
     entry, be32toh(trampoline_data->kernel_entry));
 printf("DTB at %#x, mdp at %#x\n",
     be32toh(trampoline_data->dtb), be32toh(trampoline_data->mdp));

 dev_cleanup();

 archsw.arch_copyin(trampoline, trampolinebase, szkerneltramp);
 free(trampoline);

 if (archsw.arch_kexec_kseg_get == ((void*)0))
  panic("architecture did not provide kexec segment mapping");
 archsw.arch_kexec_kseg_get(&nseg, &kseg);

 error = kexec_load(trampolinebase, nseg, (uintptr_t)kseg);
 if (error != 0)
  panic("kexec_load returned error: %d", error);

 error = host_reboot(0xfee1dead, 672274793,
     0x45584543 , (uintptr_t)((void*)0));
 if (error != 0)
  panic("reboot returned error: %d", error);

 while (1) {}
}
