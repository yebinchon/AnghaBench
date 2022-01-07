
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_tag_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;



void
bus_space_write_2(bus_space_tag_t t, bus_space_handle_t h,
    bus_size_t offset, uint16_t data)
{
 *((volatile uint16_t *)(h + offset)) = data;
}
