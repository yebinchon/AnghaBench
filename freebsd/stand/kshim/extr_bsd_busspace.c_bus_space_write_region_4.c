
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct burst {int dummy; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;



void
bus_space_write_region_4(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t offset, uint32_t *datap, bus_size_t count)
{
 enum { BURST = sizeof(struct burst) / 4 };

 h += offset;

 while (count >= BURST) {
  *(( struct burst *)h) = *(struct burst *)datap;

  h += BURST * 4;
  datap += BURST;
  count -= BURST;
 }

 while (count--) {
  *((volatile uint32_t *)h) = *datap++;
  h += 4;
 }
}
