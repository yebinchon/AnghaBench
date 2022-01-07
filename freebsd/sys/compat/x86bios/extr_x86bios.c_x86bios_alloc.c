
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;


 int M_DEVBUF ;
 int X86BIOS_PAGE_SIZE ;
 int X86BIOS_RAM_BASE ;
 void* contigmalloc (size_t,int ,int,int ,int ,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vtophys (void*) ;
 int x86bios_lock ;
 int x86bios_rom_phys ;
 int x86bios_set_pages (int ,int ,size_t) ;

void *
x86bios_alloc(uint32_t *offset, size_t size, int flags)
{
 void *vaddr;

 if (offset == ((void*)0) || size == 0)
  return (((void*)0));
 vaddr = contigmalloc(size, M_DEVBUF, flags, X86BIOS_RAM_BASE,
     x86bios_rom_phys, X86BIOS_PAGE_SIZE, 0);
 if (vaddr != ((void*)0)) {
  *offset = vtophys(vaddr);
  mtx_lock(&x86bios_lock);
  x86bios_set_pages((vm_offset_t)vaddr, *offset, size);
  mtx_unlock(&x86bios_lock);
 }

 return (vaddr);
}
