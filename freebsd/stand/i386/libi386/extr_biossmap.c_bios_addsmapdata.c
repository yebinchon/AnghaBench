
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {int dummy; } ;


 int MODINFOMD_SMAP ;
 int MODINFOMD_SMAP_XATTR ;
 int file_addmetadata (struct preloaded_file*,int ,size_t,int *) ;
 int * smapattr ;
 int * smapbase ;
 int smaplen ;

void
bios_addsmapdata(struct preloaded_file *kfp)
{
 size_t size;

 if (smapbase == ((void*)0) || smaplen == 0)
  return;
 size = smaplen * sizeof(*smapbase);
 file_addmetadata(kfp, MODINFOMD_SMAP, size, smapbase);
 if (smapattr != ((void*)0)) {
  size = smaplen * sizeof(*smapattr);
  file_addmetadata(kfp, MODINFOMD_SMAP_XATTR, size, smapattr);
 }
}
