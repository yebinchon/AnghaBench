
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int fileargs_t ;
typedef int cap_channel_t ;


 int cap_close (int *) ;
 int * cap_init () ;
 int * fileargs_cinitnv (int *,int *) ;
 int * fileargs_create (int *,int ) ;
 int nvlist_destroy (int *) ;

fileargs_t *
fileargs_initnv(nvlist_t *limits)
{
        cap_channel_t *cas;
 fileargs_t *fa;

 if (limits == ((void*)0)) {
  return (fileargs_create(((void*)0), 0));
 }

        cas = cap_init();
        if (cas == ((void*)0)) {
  nvlist_destroy(limits);
                return (((void*)0));
 }

        fa = fileargs_cinitnv(cas, limits);
        cap_close(cas);

 return (fa);
}
