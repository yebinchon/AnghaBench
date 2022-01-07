
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int M_DEVBUF ;
 int X86BIOS_IVT_SIZE ;
 int X86BIOS_ROM_SIZE ;
 int X86BIOS_SEG_SIZE ;
 int contigfree (int *,int ,int ) ;
 int free (int *,int ) ;
 int pmap_unmapbios (int ,int ) ;
 int pmap_unmapdev (int ,int ) ;
 int * x86bios_ivt ;
 int * x86bios_map ;
 int * x86bios_rom ;
 int * x86bios_seg ;

__attribute__((used)) static __inline void
x86bios_unmap_mem(void)
{

 if (x86bios_map != ((void*)0)) {
  free(x86bios_map, M_DEVBUF);
  x86bios_map = ((void*)0);
 }
 if (x86bios_ivt != ((void*)0)) {



  free(x86bios_ivt, M_DEVBUF);
  x86bios_ivt = ((void*)0);

 }
 if (x86bios_rom != ((void*)0))
  pmap_unmapdev((vm_offset_t)x86bios_rom, X86BIOS_ROM_SIZE);
 if (x86bios_seg != ((void*)0)) {
  contigfree(x86bios_seg, X86BIOS_SEG_SIZE, M_DEVBUF);
  x86bios_seg = ((void*)0);
 }
}
