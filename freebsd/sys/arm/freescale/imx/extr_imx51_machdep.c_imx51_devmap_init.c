
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int devmap_add_entry (int,int) ;

__attribute__((used)) static int
imx51_devmap_init(platform_t plat)
{

 devmap_add_entry(0x70000000, 0x00100000);
 devmap_add_entry(0x73f00000, 0x00100000);
 devmap_add_entry(0x83f00000, 0x00100000);

 return (0);
}
