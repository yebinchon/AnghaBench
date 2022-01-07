
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct bios_smap {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; int base; int length; } ;
struct TYPE_5__ {scalar_t__ ebx; int addr; int eax; int ecx; int edx; void* ctl; int efl; int edi; int es; } ;


 int HEAP_MIN ;
 int SMAP_SIG ;
 scalar_t__ SMAP_TYPE_MEMORY ;
 scalar_t__ V86_CY (int ) ;
 void* V86_FLAGS ;
 int VTOPOFF (TYPE_2__*) ;
 int VTOPSEG (TYPE_2__*) ;
 int bios_basemem ;
 int bios_extmem ;
 int high_heap_base ;
 int high_heap_size ;
 TYPE_2__ smap ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static void
bios_getmem(void)
{
    uint64_t size;


    v86.ebx = 0;
    do {
 v86.ctl = V86_FLAGS;
 v86.addr = 0x15;
 v86.eax = 0xe820;
 v86.ecx = sizeof(struct bios_smap);
 v86.edx = SMAP_SIG;
 v86.es = VTOPSEG(&smap);
 v86.edi = VTOPOFF(&smap);
 v86int();
 if (V86_CY(v86.efl) || (v86.eax != SMAP_SIG))
     break;

 if ((smap.type == SMAP_TYPE_MEMORY) && (smap.base == 0) &&
     (smap.length >= (512 * 1024)))
     bios_basemem = smap.length;

 if ((smap.type == SMAP_TYPE_MEMORY) && (smap.base == 0x100000)) {
     bios_extmem = smap.length;
 }





 if ((smap.type == SMAP_TYPE_MEMORY) && (smap.base > 0x100000) &&
     (smap.base < 0x100000000ull)) {
     size = smap.length;




     if (smap.base + size > 0x100000000ull)
  size = 0x100000000ull - smap.base;

     if (size > high_heap_size) {
  high_heap_size = size;
  high_heap_base = smap.base;
     }
 }
    } while (v86.ebx != 0);


    if (bios_basemem == 0) {
 v86.ctl = 0;
 v86.addr = 0x12;
 v86int();

 bios_basemem = (v86.eax & 0xffff) * 1024;
    }


    if (bios_extmem == 0) {
 v86.ctl = V86_FLAGS;
 v86.addr = 0x15;
 v86.eax = 0xe801;
 v86int();
 if (!V86_CY(v86.efl)) {
     bios_extmem = ((v86.ecx & 0xffff) + ((v86.edx & 0xffff) * 64)) * 1024;
 }
    }
    if (bios_extmem == 0) {
 v86.ctl = 0;
 v86.addr = 0x15;
 v86.eax = 0x8800;
 v86int();
 bios_extmem = (v86.eax & 0xffff) * 1024;
    }






    if (bios_extmem >= HEAP_MIN && high_heap_size < HEAP_MIN) {
 high_heap_size = HEAP_MIN;
 high_heap_base = bios_extmem + 0x100000 - HEAP_MIN;
    }
}
