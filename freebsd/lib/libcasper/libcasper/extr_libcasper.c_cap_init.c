
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int assert (int) ;
 int * cap_wrap (int,int) ;
 int * cap_xfer_nvlist (int const*,int *) ;
 int channel_nvlist_flags (int const*) ;
 int close (int) ;
 int errno ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 int nvlist_take_descriptor (int *,char*) ;
 int nvlist_take_number (int *,char*) ;

cap_channel_t *
cap_service_open(const cap_channel_t *chan, const char *name)
{
 cap_channel_t *newchan;
 nvlist_t *nvl;
 int sock, error;
 int flags;

 sock = -1;

 nvl = nvlist_create(channel_nvlist_flags(chan));
 nvlist_add_string(nvl, "cmd", "open");
 nvlist_add_string(nvl, "service", name);
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0))
  return (((void*)0));
 error = (int)nvlist_get_number(nvl, "error");
 if (error != 0) {
  nvlist_destroy(nvl);
  errno = error;
  return (((void*)0));
 }
 sock = nvlist_take_descriptor(nvl, "chanfd");
 flags = nvlist_take_number(nvl, "chanflags");
 assert(sock >= 0);
 nvlist_destroy(nvl);
 nvl = ((void*)0);
 newchan = cap_wrap(sock, flags);
 if (newchan == ((void*)0))
  goto fail;
 return (newchan);
fail:
 error = errno;
 close(sock);
 errno = error;
 return (((void*)0));
}
