
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
typedef int socklen_t ;
typedef int nvlist_t ;


 int NO_RECOVERY ;
 int dns_allowed_family (int const*,int) ;
 int dns_allowed_type (int const*,char*) ;
 struct hostent* gethostbyaddr (void const*,int ,int) ;
 int h_errno ;
 int hostent_pack (struct hostent*,int *) ;
 void* nvlist_get_binary (int const*,char*,size_t*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;

__attribute__((used)) static int
dns_gethostbyaddr(const nvlist_t *limits, const nvlist_t *nvlin,
    nvlist_t *nvlout)
{
 struct hostent *hp;
 const void *addr;
 size_t addrsize;
 int family;

 if (!dns_allowed_type(limits, "ADDR2NAME") &&
     !dns_allowed_type(limits, "ADDR"))
  return (NO_RECOVERY);

 family = (int)nvlist_get_number(nvlin, "family");

 if (!dns_allowed_family(limits, family))
  return (NO_RECOVERY);

 addr = nvlist_get_binary(nvlin, "addr", &addrsize);
 hp = gethostbyaddr(addr, (socklen_t)addrsize, family);
 if (hp == ((void*)0))
  return (h_errno);
 hostent_pack(hp, nvlout);
 return (0);
}
