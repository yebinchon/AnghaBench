
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcache_add_dev (int ) ;
 int cdinfo ;
 int efiblk_pdinfo_count (int *) ;
 int efipart_updatecd () ;

__attribute__((used)) static int
efipart_initcd(void)
{
 efipart_updatecd();

 bcache_add_dev(efiblk_pdinfo_count(&cdinfo));
 return (0);
}
