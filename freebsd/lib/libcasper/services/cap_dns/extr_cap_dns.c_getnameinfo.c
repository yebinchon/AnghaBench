
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ socklen_t ;
typedef int nvlist_t ;
typedef int cap_channel_t ;


 int EAI_MEMORY ;
 int * cap_xfer_nvlist (int *,int *) ;
 int nvlist_add_binary (int *,char*,struct sockaddr const*,size_t) ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_exists_string (int *,char*) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 int nvlist_get_string (int *,char*) ;
 int strlcpy (char*,int ,size_t) ;

int
cap_getnameinfo(cap_channel_t *chan, const struct sockaddr *sa, socklen_t salen,
    char *host, size_t hostlen, char *serv, size_t servlen, int flags)
{
 nvlist_t *nvl;
 int error;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", "getnameinfo");
 nvlist_add_number(nvl, "hostlen", (uint64_t)hostlen);
 nvlist_add_number(nvl, "servlen", (uint64_t)servlen);
 nvlist_add_binary(nvl, "sa", sa, (size_t)salen);
 nvlist_add_number(nvl, "flags", (uint64_t)flags);
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0))
  return (EAI_MEMORY);
 if (nvlist_get_number(nvl, "error") != 0) {
  error = (int)nvlist_get_number(nvl, "error");
  nvlist_destroy(nvl);
  return (error);
 }

 if (host != ((void*)0) && nvlist_exists_string(nvl, "host"))
  strlcpy(host, nvlist_get_string(nvl, "host"), hostlen + 1);
 if (serv != ((void*)0) && nvlist_exists_string(nvl, "serv"))
  strlcpy(serv, nvlist_get_string(nvl, "serv"), servlen + 1);
 nvlist_destroy(nvl);
 return (0);
}
