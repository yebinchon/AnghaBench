
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcache_add_dev (int ) ;
 int efiblk_pdinfo_count (int *) ;
 int efipart_updatehd () ;
 int hdinfo ;

__attribute__((used)) static int
efipart_inithd(void)
{

 efipart_updatehd();

 bcache_add_dev(efiblk_pdinfo_count(&hdinfo));
 return (0);
}
