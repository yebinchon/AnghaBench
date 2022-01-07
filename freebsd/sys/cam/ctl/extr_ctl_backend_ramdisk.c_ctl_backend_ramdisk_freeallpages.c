
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int M_RAMDISK ;
 int PPP ;
 int free (int **,int ) ;

__attribute__((used)) static void
ctl_backend_ramdisk_freeallpages(uint8_t **p, int indir)
{
 int i;

 if (p == ((void*)0))
  return;
 if (indir == 0) {
  free(p, M_RAMDISK);
  return;
 }
 for (i = 0; i < PPP; i++) {
  if (p[i] == ((void*)0))
   continue;
  ctl_backend_ramdisk_freeallpages((uint8_t **)p[i], indir - 1);
 }
 free(p, M_RAMDISK);
}
