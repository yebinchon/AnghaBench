
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int nc_key ;
 scalar_t__ nc_key_error ;
 int nc_key_init ;
 int nc_once ;
 scalar_t__ thr_getspecific (int ) ;
 scalar_t__ thr_main () ;
 scalar_t__ thr_once (int *,int ) ;
 scalar_t__ thr_setspecific (int ,void*) ;

__attribute__((used)) static int *
__nc_error(void)
{
 static int nc_error = 0;
 int *nc_addr;






 if (thr_main())
  return (&nc_error);
 if (thr_once(&nc_once, nc_key_init) != 0 || nc_key_error != 0)
  return (&nc_error);
 if ((nc_addr = (int *)thr_getspecific(nc_key)) == ((void*)0)) {
  nc_addr = (int *)malloc(sizeof (int));
  if (thr_setspecific(nc_key, (void *) nc_addr) != 0) {
   free(nc_addr);
   return (&nc_error);
  }
  *nc_addr = 0;
 }
 return (nc_addr);
}
