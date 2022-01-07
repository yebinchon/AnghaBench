
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devmap_add_entry (int,int) ;

int
platform_devmap_init(void)
{
 devmap_add_entry(0x19C00000, 0xE0000);
 devmap_add_entry(0x1e800000, 0x800000);
 devmap_add_entry(0x1f000000, 0x400000);
 return (0);
}
