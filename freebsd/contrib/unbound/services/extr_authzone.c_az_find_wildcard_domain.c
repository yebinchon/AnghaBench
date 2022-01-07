
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wc ;
typedef int uint8_t ;
struct auth_zone {int dummy; } ;
struct auth_data {int dummy; } ;


 int LDNS_MAX_DOMAINLEN ;
 struct auth_data* az_find_name (struct auth_zone*,int*,size_t) ;
 int memmove (int*,int*,size_t) ;

__attribute__((used)) static struct auth_data*
az_find_wildcard_domain(struct auth_zone* z, uint8_t* nm, size_t nmlen)
{
 uint8_t wc[LDNS_MAX_DOMAINLEN];
 if(nmlen+2 > sizeof(wc))
  return ((void*)0);
 wc[0] = 1;
 wc[1] = (uint8_t)'*';
 memmove(wc+2, nm, nmlen);
 return az_find_name(z, wc, nmlen+2);
}
