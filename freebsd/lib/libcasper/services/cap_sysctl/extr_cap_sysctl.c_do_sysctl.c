
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int cap_channel_t ;


 scalar_t__ CAP_SYSCTL_READ ;
 scalar_t__ CAP_SYSCTL_WRITE ;
 int * cap_xfer_nvlist (int *,int *) ;
 scalar_t__ dnvlist_get_number (int *,char*,int ) ;
 int errno ;
 int memcpy (void*,scalar_t__ const*,size_t) ;
 int nvlist_add_binary (int *,char*,void const*,size_t) ;
 int nvlist_add_null (int *,char*) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__* nvlist_get_binary (int *,char*,size_t*) ;
 scalar_t__ nvlist_get_number (int *,char*) ;

__attribute__((used)) static int
do_sysctl(cap_channel_t *chan, nvlist_t *nvl, void *oldp, size_t *oldlenp,
    const void *newp, size_t newlen)
{
 const uint8_t *retoldp;
 size_t oldlen;
 int error;
 uint8_t operation;

 operation = 0;
 if (oldlenp != ((void*)0))
  operation |= CAP_SYSCTL_READ;
 if (newp != ((void*)0))
  operation |= CAP_SYSCTL_WRITE;
 nvlist_add_number(nvl, "operation", (uint64_t)operation);
 if (oldp == ((void*)0) && oldlenp != ((void*)0))
  nvlist_add_null(nvl, "justsize");
 else if (oldlenp != ((void*)0))
  nvlist_add_number(nvl, "oldlen", (uint64_t)*oldlenp);
 if (newp != ((void*)0))
  nvlist_add_binary(nvl, "newp", newp, newlen);

 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0))
  return (-1);
 error = (int)dnvlist_get_number(nvl, "error", 0);
 if (error != 0) {
  nvlist_destroy(nvl);
  errno = error;
  return (-1);
 }

 if (oldp == ((void*)0) && oldlenp != ((void*)0)) {
  *oldlenp = (size_t)nvlist_get_number(nvl, "oldlen");
 } else if (oldp != ((void*)0)) {
  retoldp = nvlist_get_binary(nvl, "oldp", &oldlen);
  memcpy(oldp, retoldp, oldlen);
  if (oldlenp != ((void*)0))
   *oldlenp = oldlen;
 }

 nvlist_destroy(nvl);

 return (0);
}
