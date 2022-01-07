
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct sys_info {int mr_no; TYPE_1__* mr; } ;
struct TYPE_2__ {scalar_t__ flags; int size; scalar_t__ start; } ;


 int KERN_ALIGN ;
 scalar_t__ KERN_MINADDR ;
 scalar_t__ MR_ATTR_DRAM ;
 int PAGE_SIZE ;
 scalar_t__ _start ;
 int panic (char*) ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ rounddown2 (scalar_t__,int ) ;
 scalar_t__ roundup2 (scalar_t__,int ) ;
 scalar_t__ strtoul (char*,int *,int) ;
 char* ub_env_get (char*) ;
 struct sys_info* ub_get_sys_info () ;
 scalar_t__ uboot_heap_end ;

uint64_t
uboot_loadaddr(u_int type, void *data, uint64_t addr)
{
 struct sys_info *si;
 uint64_t sblock, eblock, subldr, eubldr;
 uint64_t biggest_block, this_block;
 uint64_t biggest_size, this_size;
 int i;
 char *envstr;

 if (addr == 0) {






  envstr = ub_env_get("loader_kernaddr");
  if (envstr != ((void*)0))
   return (strtoul(envstr, ((void*)0), 16));
  if ((si = ub_get_sys_info()) == ((void*)0))
   panic("could not retrieve system info");

  biggest_block = 0;
  biggest_size = 0;
  subldr = rounddown2((uintptr_t)_start, KERN_ALIGN);
  eubldr = roundup2((uint64_t)uboot_heap_end, KERN_ALIGN);
  for (i = 0; i < si->mr_no; i++) {
   if (si->mr[i].flags != MR_ATTR_DRAM)
    continue;
   sblock = roundup2((uint64_t)si->mr[i].start,
       KERN_ALIGN);
   eblock = rounddown2((uint64_t)si->mr[i].start +
       si->mr[i].size, KERN_ALIGN);
   if (biggest_size == 0)
    sblock += KERN_MINADDR;
   if (subldr >= sblock && subldr < eblock) {
    if (subldr - sblock > eblock - eubldr) {
     this_block = sblock;
     this_size = subldr - sblock;
    } else {
     this_block = eubldr;
     this_size = eblock - eubldr;
    }
   } else if (subldr < sblock && eubldr < eblock) {

    this_block = (eubldr < sblock) ? sblock : eubldr;
    this_size = eblock - this_block;
   } else {
    this_block = 0;
    this_size = 0;
   }
   if (biggest_size < this_size) {
    biggest_block = this_block;
    biggest_size = this_size;
   }
  }
  if (biggest_size == 0)
   panic("Not enough DRAM to load kernel");






  return (biggest_block);
 }
 return roundup2(addr, PAGE_SIZE);
}
