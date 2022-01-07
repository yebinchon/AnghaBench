
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; struct addrinfo* ai_next; int * ai_canonname; int * ai_addr; scalar_t__ ai_addrlen; } ;
typedef int nvlname ;
typedef int nvlist_t ;


 int AF_UNSPEC ;
 int NO_RECOVERY ;
 int * addrinfo_pack (struct addrinfo*) ;
 int assert (int) ;
 int dns_allowed_family (int const*,int) ;
 int dns_allowed_type (int const*,char*) ;
 char* dnvlist_get_string (int const*,char*,int *) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ nvlist_exists_number (int const*,char*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 int nvlist_move_nvlist (int *,char*,int *) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int
dns_getaddrinfo(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
 struct addrinfo hints, *hintsp, *res, *cur;
 const char *hostname, *servname;
 char nvlname[64];
 nvlist_t *elem;
 unsigned int ii;
 int error, family, n;

 if (!dns_allowed_type(limits, "NAME2ADDR") &&
     !dns_allowed_type(limits, "NAME"))
  return (NO_RECOVERY);

 hostname = dnvlist_get_string(nvlin, "hostname", ((void*)0));
 servname = dnvlist_get_string(nvlin, "servname", ((void*)0));
 if (nvlist_exists_number(nvlin, "hints.ai_flags")) {
  hints.ai_flags = (int)nvlist_get_number(nvlin,
      "hints.ai_flags");
  hints.ai_family = (int)nvlist_get_number(nvlin,
      "hints.ai_family");
  hints.ai_socktype = (int)nvlist_get_number(nvlin,
      "hints.ai_socktype");
  hints.ai_protocol = (int)nvlist_get_number(nvlin,
      "hints.ai_protocol");
  hints.ai_addrlen = 0;
  hints.ai_addr = ((void*)0);
  hints.ai_canonname = ((void*)0);
  hints.ai_next = ((void*)0);
  hintsp = &hints;
  family = hints.ai_family;
 } else {
  hintsp = ((void*)0);
  family = AF_UNSPEC;
 }

 if (!dns_allowed_family(limits, family))
  return (NO_RECOVERY);

 error = getaddrinfo(hostname, servname, hintsp, &res);
 if (error != 0)
  goto out;

 for (cur = res, ii = 0; cur != ((void*)0); cur = cur->ai_next, ii++) {
  elem = addrinfo_pack(cur);
  n = snprintf(nvlname, sizeof(nvlname), "res%u", ii);
  assert(n > 0 && n < (int)sizeof(nvlname));
  nvlist_move_nvlist(nvlout, nvlname, elem);
 }

 freeaddrinfo(res);
 error = 0;
out:
 return (error);
}
