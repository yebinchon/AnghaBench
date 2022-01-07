
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct bios_smap_xattr {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; int base; int length; } ;
struct TYPE_5__ {scalar_t__ ebx; int addr; int eax; int ecx; int edx; void* ctl; int efl; int edi; int es; } ;


 int BQ_DISTRUST_E820_EXTMEM ;
 int B_BASEMEM_12 ;
 int B_BASEMEM_E820 ;
 int B_EXTMEM_8800 ;
 int B_EXTMEM_E801 ;
 int B_EXTMEM_E820 ;
 int HEAP_MIN ;
 int SMAP_SIG ;
 scalar_t__ SMAP_TYPE_MEMORY ;
 scalar_t__ V86_CY (int ) ;
 void* V86_FLAGS ;
 int VTOPOFF (TYPE_2__*) ;
 int VTOPSEG (TYPE_2__*) ;
 int b_bios_probed ;
 int bios_basemem ;
 int bios_extmem ;
 int bios_getquirks () ;
 int high_heap_base ;
 int high_heap_size ;
 int memtop ;
 int memtop_copyin ;
 TYPE_2__ smap ;
 TYPE_1__ v86 ;
 int v86int () ;

void
bios_getmem(void)
{
 uint64_t size;


 v86.ebx = 0;
 do {
  v86.ctl = V86_FLAGS;
  v86.addr = 0x15;
  v86.eax = 0xe820;
  v86.ecx = sizeof(struct bios_smap_xattr);
  v86.edx = SMAP_SIG;
  v86.es = VTOPSEG(&smap);
  v86.edi = VTOPOFF(&smap);
  v86int();
  if ((V86_CY(v86.efl)) || (v86.eax != SMAP_SIG))
   break;

  if ((smap.type == SMAP_TYPE_MEMORY) && (smap.base == 0) &&
      (smap.length >= (512 * 1024))) {
   bios_basemem = smap.length;
   b_bios_probed |= B_BASEMEM_E820;
  }


  if ((smap.type == SMAP_TYPE_MEMORY) &&
      (smap.base == 0x100000) &&
      !(bios_getquirks() & BQ_DISTRUST_E820_EXTMEM)) {
   bios_extmem = smap.length;
   b_bios_probed |= B_EXTMEM_E820;
  }





  if ((smap.type == SMAP_TYPE_MEMORY) &&
      (smap.base > 0x100000) &&
      (smap.base < 0x100000000ull)) {
   size = smap.length;





   if (smap.base + size > 0x100000000ull)
    size = 0x100000000ull - smap.base;





   if (high_heap_base < smap.base && size >= HEAP_MIN) {
    high_heap_base = smap.base + size - HEAP_MIN;
    high_heap_size = HEAP_MIN;
   }
  }
 } while (v86.ebx != 0);


 if (bios_basemem == 0) {
  v86.ctl = 0;
  v86.addr = 0x12;
  v86int();

  bios_basemem = (v86.eax & 0xffff) * 1024;
  b_bios_probed |= B_BASEMEM_12;
 }





 if (bios_extmem == 0) {
  v86.ctl = V86_FLAGS;
  v86.addr = 0x15;
  v86.eax = 0xe801;
  v86int();
  if (!(V86_CY(v86.efl))) {






   high_heap_size = 0;
   high_heap_base = 0;







   bios_extmem = (v86.ecx & 0xffff) * 1024;
   if (bios_extmem == (1024 * 0x3c00))
    bios_extmem += (v86.edx & 0xffff) * 64 * 1024;


   if (bios_extmem > 0x3ff00000)
    bios_extmem = 0x3ff00000;

   b_bios_probed |= B_EXTMEM_E801;
  }
 }
 if (bios_extmem == 0) {
  v86.ctl = 0;
  v86.addr = 0x15;
  v86.eax = 0x8800;
  v86int();
  bios_extmem = (v86.eax & 0xffff) * 1024;
  b_bios_probed |= B_EXTMEM_8800;
 }


 if (high_heap_size != 0) {
  memtop = memtop_copyin = high_heap_base;
 } else {
  memtop = memtop_copyin = 0x100000 + bios_extmem;
 }






 if (bios_extmem >= HEAP_MIN && high_heap_size < HEAP_MIN) {
  high_heap_size = HEAP_MIN;
  high_heap_base = memtop - HEAP_MIN;
  memtop = memtop_copyin = high_heap_base;
 }
}
