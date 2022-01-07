
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kstat_delete (int *) ;
 int * zcomp_ksp ;

void
zio_compress_fini(void)
{
 if (zcomp_ksp != ((void*)0)) {
  kstat_delete(zcomp_ksp);
  zcomp_ksp = ((void*)0);
 }
}
