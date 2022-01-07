
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int bus_space_read_2 (int ,int ,int ) ;

void
bus_space_read_multi_2(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t offset, uint16_t *datap, bus_size_t count)
{
 while (count--) {
  *datap++ = bus_space_read_2(t, h, offset);
 }
}
