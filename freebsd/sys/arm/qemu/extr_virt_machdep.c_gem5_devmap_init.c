
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int devmap_add_entry (int,int) ;

__attribute__((used)) static int
gem5_devmap_init(platform_t plat)
{

 devmap_add_entry(0x1c090000, 0x100000);
 return (0);
}
