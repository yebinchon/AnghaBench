
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int devmap_add_entry (int,int) ;

__attribute__((used)) static int
allwinner_devmap_init(platform_t plat)
{

 devmap_add_entry(0x01C00000, 0x00400000);

 return (0);
}
