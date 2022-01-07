
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;


 int LDNS_MAX_DOMAINLEN ;
 int log_err (char*) ;
 int memmove (int*,int*,size_t) ;
 scalar_t__ regional_alloc (struct regional*,size_t) ;

__attribute__((used)) static uint8_t*
nsec3_ce_wildcard(struct regional* region, uint8_t* ce, size_t celen,
 size_t* len)
{
 uint8_t* nm;
 if(celen > LDNS_MAX_DOMAINLEN - 2)
  return 0;
 nm = (uint8_t*)regional_alloc(region, celen+2);
 if(!nm) {
  log_err("nsec3 wildcard: out of memory");
  return 0;
 }
 nm[0] = 1;
 nm[1] = (uint8_t)'*';
 memmove(nm+2, ce, celen);
 *len = celen+2;
 return nm;
}
