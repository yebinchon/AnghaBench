
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kstat_delete (int *) ;
 int * zfetch_ksp ;

void
zfetch_fini(void)
{
 if (zfetch_ksp != ((void*)0)) {
  kstat_delete(zfetch_ksp);
  zfetch_ksp = ((void*)0);
 }
}
