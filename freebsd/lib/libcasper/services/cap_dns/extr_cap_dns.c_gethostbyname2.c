
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hostent {int dummy; } ;
typedef int nvlist_t ;
typedef int cap_channel_t ;


 int NO_RECOVERY ;
 int * cap_xfer_nvlist (int *,int *) ;
 int h_errno ;
 int hent ;
 struct hostent* hostent_unpack (int *,int *) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_get_number (int *,char*) ;

struct hostent *
cap_gethostbyname2(cap_channel_t *chan, const char *name, int type)
{
 struct hostent *hp;
 nvlist_t *nvl;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", "gethostbyname");
 nvlist_add_number(nvl, "family", (uint64_t)type);
 nvlist_add_string(nvl, "name", name);
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0)) {
  h_errno = NO_RECOVERY;
  return (((void*)0));
 }
 if (nvlist_get_number(nvl, "error") != 0) {
  h_errno = (int)nvlist_get_number(nvl, "error");
  nvlist_destroy(nvl);
  return (((void*)0));
 }

 hp = hostent_unpack(nvl, &hent);
 nvlist_destroy(nvl);
 return (hp);
}
