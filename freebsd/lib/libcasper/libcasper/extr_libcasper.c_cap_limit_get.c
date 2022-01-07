
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int * cap_xfer_nvlist (int const*,int *) ;
 int channel_nvlist_flags (int const*) ;
 int errno ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_exists_null (int *,char*) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 int * nvlist_take_nvlist (int *,char*) ;

int
cap_limit_get(const cap_channel_t *chan, nvlist_t **limitsp)
{
 nvlist_t *nvlmsg;
 int error;

 nvlmsg = nvlist_create(channel_nvlist_flags(chan));
 nvlist_add_string(nvlmsg, "cmd", "limit_get");
 nvlmsg = cap_xfer_nvlist(chan, nvlmsg);
 if (nvlmsg == ((void*)0))
  return (-1);
 error = (int)nvlist_get_number(nvlmsg, "error");
 if (error != 0) {
  nvlist_destroy(nvlmsg);
  errno = error;
  return (-1);
 }
 if (nvlist_exists_null(nvlmsg, "limits"))
  *limitsp = ((void*)0);
 else
  *limitsp = nvlist_take_nvlist(nvlmsg, "limits");
 nvlist_destroy(nvlmsg);
 return (0);
}
