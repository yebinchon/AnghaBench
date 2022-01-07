
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; int * ai_next; void* ai_addr; int * ai_canonname; scalar_t__ ai_addrlen; } ;
typedef scalar_t__ socklen_t ;
typedef int nvlist_t ;


 int bcopy (void const*,void*,size_t) ;
 char* dnvlist_get_string (int const*,char*,int *) ;
 int free (struct addrinfo*) ;
 struct addrinfo* malloc (int) ;
 void* nvlist_get_binary (int const*,char*,size_t*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 int * strdup (char const*) ;

__attribute__((used)) static struct addrinfo *
addrinfo_unpack(const nvlist_t *nvl)
{
 struct addrinfo *ai;
 const void *addr;
 size_t addrlen;
 const char *canonname;

 addr = nvlist_get_binary(nvl, "ai_addr", &addrlen);
 ai = malloc(sizeof(*ai) + addrlen);
 if (ai == ((void*)0))
  return (((void*)0));
 ai->ai_flags = (int)nvlist_get_number(nvl, "ai_flags");
 ai->ai_family = (int)nvlist_get_number(nvl, "ai_family");
 ai->ai_socktype = (int)nvlist_get_number(nvl, "ai_socktype");
 ai->ai_protocol = (int)nvlist_get_number(nvl, "ai_protocol");
 ai->ai_addrlen = (socklen_t)addrlen;
 canonname = dnvlist_get_string(nvl, "ai_canonname", ((void*)0));
 if (canonname != ((void*)0)) {
  ai->ai_canonname = strdup(canonname);
  if (ai->ai_canonname == ((void*)0)) {
   free(ai);
   return (((void*)0));
  }
 } else {
  ai->ai_canonname = ((void*)0);
 }
 ai->ai_addr = (void *)(ai + 1);
 bcopy(addr, ai->ai_addr, addrlen);
 ai->ai_next = ((void*)0);

 return (ai);
}
