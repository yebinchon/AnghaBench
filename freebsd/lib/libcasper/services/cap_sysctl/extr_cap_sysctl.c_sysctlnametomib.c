
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int cap_channel_t ;


 int * cap_xfer_nvlist (int *,int *) ;
 scalar_t__ dnvlist_get_number (int *,char*,int ) ;
 int errno ;
 int memcpy (int*,void const*,size_t) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 void* nvlist_get_binary (int *,char*,size_t*) ;

int
cap_sysctlnametomib(cap_channel_t *chan, const char *name, int *mibp,
    size_t *sizep)
{
 nvlist_t *req;
 const void *mib;
 size_t mibsz;
 int error;

 req = nvlist_create(0);
 nvlist_add_string(req, "cmd", "sysctlnametomib");
 nvlist_add_string(req, "name", name);
 nvlist_add_number(req, "operation", 0);
 nvlist_add_number(req, "size", (uint64_t)*sizep);

 req = cap_xfer_nvlist(chan, req);
 if (req == ((void*)0))
  return (-1);
 error = (int)dnvlist_get_number(req, "error", 0);
 if (error != 0) {
  nvlist_destroy(req);
  errno = error;
  return (-1);
 }

 mib = nvlist_get_binary(req, "mib", &mibsz);
 *sizep = mibsz / sizeof(int);

 memcpy(mibp, mib, mibsz);

 nvlist_destroy(req);

 return (0);
}
