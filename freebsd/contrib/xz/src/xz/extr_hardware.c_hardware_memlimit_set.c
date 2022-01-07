
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int assert (int) ;
 int memlimit_compress ;
 int memlimit_decompress ;
 int total_ram ;

extern void
hardware_memlimit_set(uint64_t new_memlimit,
  bool set_compress, bool set_decompress, bool is_percentage)
{
 if (is_percentage) {
  assert(new_memlimit > 0);
  assert(new_memlimit <= 100);
  new_memlimit = (uint32_t)new_memlimit * total_ram / 100;
 }

 if (set_compress)
  memlimit_compress = new_memlimit;

 if (set_decompress)
  memlimit_decompress = new_memlimit;

 return;
}
