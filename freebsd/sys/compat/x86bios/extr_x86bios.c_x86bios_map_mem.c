
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int uint16_t ;
typedef int * caddr_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAT_WRITE_BACK ;
 int X86BIOS_IVT_BASE ;
 int X86BIOS_IVT_SIZE ;
 scalar_t__ X86BIOS_MEM_SIZE ;
 int X86BIOS_PAGES ;
 int X86BIOS_PAGE_SIZE ;
 int X86BIOS_RAM_BASE ;
 int X86BIOS_ROM_BASE ;
 int X86BIOS_ROM_SIZE ;
 int X86BIOS_SEG_SIZE ;
 scalar_t__ bootverbose ;
 int * contigmalloc (int,int ,int,int ,int,int ,int ) ;
 void* malloc (int,int ,int) ;
 scalar_t__ pmap_change_attr (int ,int,int ) ;
 int * pmap_mapbios (int,int) ;
 int * pmap_mapdev (int,int) ;
 int printf (char*,int,int,int *) ;
 int rounddown (int,int ) ;
 int vtophys (int *) ;
 int * x86bios_ivt ;
 int * x86bios_map ;
 int * x86bios_rom ;
 int x86bios_rom_phys ;
 int * x86bios_seg ;
 int x86bios_seg_phys ;
 int x86bios_set_pages (int ,int,int) ;
 int x86bios_unmap_mem () ;

__attribute__((used)) static __inline int
x86bios_map_mem(void)
{

 x86bios_map = malloc(sizeof(*x86bios_map) * X86BIOS_PAGES, M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (x86bios_map == ((void*)0))
  goto fail;
 x86bios_ivt = malloc(X86BIOS_IVT_SIZE, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (x86bios_ivt == ((void*)0))
  goto fail;


 x86bios_rom_phys = X86BIOS_ROM_BASE;
 x86bios_rom = pmap_mapdev(x86bios_rom_phys, X86BIOS_ROM_SIZE);
 if (x86bios_rom == ((void*)0))
  goto fail;
 x86bios_seg = contigmalloc(X86BIOS_SEG_SIZE, M_DEVBUF, M_NOWAIT,
     X86BIOS_RAM_BASE, x86bios_rom_phys, X86BIOS_PAGE_SIZE, 0);
 if (x86bios_seg == ((void*)0))
     goto fail;
 x86bios_seg_phys = vtophys(x86bios_seg);

 x86bios_set_pages((vm_offset_t)x86bios_ivt, X86BIOS_IVT_BASE,
     X86BIOS_IVT_SIZE);
 x86bios_set_pages((vm_offset_t)x86bios_rom, x86bios_rom_phys,
     X86BIOS_ROM_SIZE);
 x86bios_set_pages((vm_offset_t)x86bios_seg, x86bios_seg_phys,
     X86BIOS_SEG_SIZE);

 if (bootverbose) {
  printf("x86bios:  IVT 0x%06jx-0x%06jx at %p\n",
      (vm_paddr_t)X86BIOS_IVT_BASE,
      (vm_paddr_t)X86BIOS_IVT_SIZE + X86BIOS_IVT_BASE - 1,
      x86bios_ivt);
  printf("x86bios: SSEG 0x%06jx-0x%06jx at %p\n",
      x86bios_seg_phys,
      (vm_paddr_t)X86BIOS_SEG_SIZE + x86bios_seg_phys - 1,
      x86bios_seg);
  if (x86bios_rom_phys < X86BIOS_ROM_BASE)
   printf("x86bios: EBDA 0x%06jx-0x%06jx at %p\n",
       x86bios_rom_phys, (vm_paddr_t)X86BIOS_ROM_BASE - 1,
       x86bios_rom);
  printf("x86bios:  ROM 0x%06jx-0x%06jx at %p\n",
      (vm_paddr_t)X86BIOS_ROM_BASE,
      (vm_paddr_t)X86BIOS_MEM_SIZE - X86BIOS_SEG_SIZE - 1,
      (caddr_t)x86bios_rom + X86BIOS_ROM_BASE - x86bios_rom_phys);
 }

 return (0);

fail:
 x86bios_unmap_mem();

 return (1);
}
