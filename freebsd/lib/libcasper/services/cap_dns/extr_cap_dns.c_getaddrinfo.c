
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct addrinfo {struct addrinfo* ai_next; scalar_t__ ai_protocol; scalar_t__ ai_socktype; scalar_t__ ai_family; scalar_t__ ai_flags; } ;
typedef int nvlname ;
typedef int nvlist_t ;
typedef int cap_channel_t ;


 int EAI_MEMORY ;
 struct addrinfo* addrinfo_unpack (int const*) ;
 int assert (int) ;
 int * cap_xfer_nvlist (int *,int *) ;
 int freeaddrinfo (struct addrinfo*) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_exists_nvlist (int *,char*) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 int * nvlist_get_nvlist (int *,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

int
cap_getaddrinfo(cap_channel_t *chan, const char *hostname, const char *servname,
    const struct addrinfo *hints, struct addrinfo **res)
{
 struct addrinfo *firstai, *prevai, *curai;
 unsigned int ii;
 const nvlist_t *nvlai;
 char nvlname[64];
 nvlist_t *nvl;
 int error, n;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", "getaddrinfo");
 if (hostname != ((void*)0))
  nvlist_add_string(nvl, "hostname", hostname);
 if (servname != ((void*)0))
  nvlist_add_string(nvl, "servname", servname);
 if (hints != ((void*)0)) {
  nvlist_add_number(nvl, "hints.ai_flags",
      (uint64_t)hints->ai_flags);
  nvlist_add_number(nvl, "hints.ai_family",
      (uint64_t)hints->ai_family);
  nvlist_add_number(nvl, "hints.ai_socktype",
      (uint64_t)hints->ai_socktype);
  nvlist_add_number(nvl, "hints.ai_protocol",
      (uint64_t)hints->ai_protocol);
 }
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0))
  return (EAI_MEMORY);
 if (nvlist_get_number(nvl, "error") != 0) {
  error = (int)nvlist_get_number(nvl, "error");
  nvlist_destroy(nvl);
  return (error);
 }

 nvlai = ((void*)0);
 firstai = prevai = curai = ((void*)0);
 for (ii = 0; ; ii++) {
  n = snprintf(nvlname, sizeof(nvlname), "res%u", ii);
  assert(n > 0 && n < (int)sizeof(nvlname));
  if (!nvlist_exists_nvlist(nvl, nvlname))
   break;
  nvlai = nvlist_get_nvlist(nvl, nvlname);
  curai = addrinfo_unpack(nvlai);
  if (curai == ((void*)0))
   break;
  if (prevai != ((void*)0))
   prevai->ai_next = curai;
  else if (firstai == ((void*)0))
   firstai = curai;
  prevai = curai;
 }
 nvlist_destroy(nvl);
 if (curai == ((void*)0) && nvlai != ((void*)0)) {
  if (firstai == ((void*)0))
   freeaddrinfo(firstai);
  return (EAI_MEMORY);
 }

 *res = firstai;
 return (0);
}
