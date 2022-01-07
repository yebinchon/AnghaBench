
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int osGetpagesize () ;

__attribute__((used)) static int unixShmRegionPerMap(void){
  int shmsz = 32*1024;
  int pgsz = osGetpagesize();
  assert( ((pgsz-1)&pgsz)==0 );
  if( pgsz<shmsz ) return 1;
  return pgsz/shmsz;
}
