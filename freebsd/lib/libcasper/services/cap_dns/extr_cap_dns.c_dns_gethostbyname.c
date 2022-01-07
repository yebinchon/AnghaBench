
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
typedef int nvlist_t ;


 int NO_RECOVERY ;
 int dns_allowed_family (int const*,int) ;
 int dns_allowed_type (int const*,char*) ;
 struct hostent* gethostbyname2 (int ,int) ;
 int h_errno ;
 int hostent_pack (struct hostent*,int *) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 int nvlist_get_string (int const*,char*) ;

__attribute__((used)) static int
dns_gethostbyname(const nvlist_t *limits, const nvlist_t *nvlin,
    nvlist_t *nvlout)
{
 struct hostent *hp;
 int family;

 if (!dns_allowed_type(limits, "NAME2ADDR") &&
     !dns_allowed_type(limits, "NAME"))
  return (NO_RECOVERY);

 family = (int)nvlist_get_number(nvlin, "family");

 if (!dns_allowed_family(limits, family))
  return (NO_RECOVERY);

 hp = gethostbyname2(nvlist_get_string(nvlin, "name"), family);
 if (hp == ((void*)0))
  return (h_errno);
 hostent_pack(hp, nvlout);
 return (0);
}
