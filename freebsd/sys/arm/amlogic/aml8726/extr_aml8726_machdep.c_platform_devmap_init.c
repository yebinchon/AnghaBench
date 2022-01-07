
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devmap_add_entry (int,int) ;

int
platform_devmap_init(void)
{

 devmap_add_entry(0xc1100000, 0x200000);
 devmap_add_entry(0xc4200000, 0x100000);
 devmap_add_entry(0xc4300000, 0x100000);
 devmap_add_entry(0xc8000000, 0x100000);
 devmap_add_entry(0xc8100000, 0x100000);
 devmap_add_entry(0xc9000000, 0x800000);
 devmap_add_entry(0xd9000000, 0x100000);
 devmap_add_entry(0xda000000, 0x100000);

 return (0);
}
