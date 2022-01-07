
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int fileargs_t ;
typedef int cap_channel_t ;


 int assert (int ) ;
 int cap_close (int *) ;
 int cap_limit_set (int *,int *) ;
 int * cap_service_open (int *,char*) ;
 int errno ;
 int * fileargs_create (int *,int) ;
 int nvlist_destroy (int *) ;
 int nvlist_get_number (int *,char*) ;

fileargs_t *
fileargs_cinitnv(cap_channel_t *cas, nvlist_t *limits)
{
 cap_channel_t *chann;
 fileargs_t *fa;
 int serrno, ret;
 int flags, operations;

 assert(cas != ((void*)0));

 if (limits == ((void*)0)) {
  return (fileargs_create(((void*)0), 0));
 }

 chann = ((void*)0);
 fa = ((void*)0);

 chann = cap_service_open(cas, "system.fileargs");
 if (chann == ((void*)0)) {
  nvlist_destroy(limits);
  return (((void*)0));
 }

 flags = nvlist_get_number(limits, "flags");
 operations = nvlist_get_number(limits, "operations");


 ret = cap_limit_set(chann, limits);
 if (ret < 0)
  goto out;

 fa = fileargs_create(chann, flags);
 if (fa == ((void*)0))
  goto out;

 return (fa);
out:
 serrno = errno;
 if (chann != ((void*)0))
  cap_close(chann);
 errno = serrno;
 return (((void*)0));
}
