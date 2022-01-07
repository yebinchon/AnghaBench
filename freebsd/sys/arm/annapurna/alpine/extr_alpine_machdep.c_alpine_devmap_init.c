
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int al_devmap_pa ;
 int al_devmap_size ;
 int alpine_get_devmap_base (int *,int *) ;
 int devmap_add_entry (int ,int ) ;

__attribute__((used)) static int
alpine_devmap_init(platform_t plat)
{
 alpine_get_devmap_base(&al_devmap_pa, &al_devmap_size);
 devmap_add_entry(al_devmap_pa, al_devmap_size);
 return (0);
}
