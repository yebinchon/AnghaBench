
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wc ;
typedef int uint8_t ;
struct regional {int dummy; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_data {int dummy; } ;


 int LDNS_MAX_DOMAINLEN ;
 struct auth_data* az_nsec3_find_ce (struct auth_zone*,int**,size_t*,int*,int,size_t,int*,size_t) ;
 struct auth_data* az_nsec3_find_cover (struct auth_zone*,int*,size_t,int,size_t,int*,size_t) ;
 struct auth_data* az_nsec3_find_exact (struct auth_zone*,int*,size_t,int,size_t,int*,size_t) ;
 int az_nsec3_get_nextcloser (int*,int*,size_t,int**,size_t*) ;
 int az_nsec3_insert (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ;
 int az_nsec3_param (struct auth_zone*,int*,size_t*,int**,size_t*) ;
 int memmove (int*,int*,size_t) ;

__attribute__((used)) static int
az_add_nsec3_proof(struct auth_zone* z, struct regional* region,
 struct dns_msg* msg, uint8_t* cenm, size_t cenmlen, uint8_t* qname,
 size_t qname_len, int nodataproof, int ceproof, int nxproof,
 int wcproof)
{
 int algo;
 size_t iter, saltlen;
 uint8_t* salt;
 int no_exact_ce = 0;
 struct auth_data* node;


 if(!az_nsec3_param(z, &algo, &iter, &salt, &saltlen))
  return 1;
 if(nodataproof) {


  struct auth_data* match;
  match = az_nsec3_find_exact(z, qname, qname_len, algo,
   iter, salt, saltlen);
  if(match) {
   if(!az_nsec3_insert(z, region, msg, match))
    return 0;

   return 1;
  }
 }

 if(ceproof) {
  node = az_nsec3_find_ce(z, &cenm, &cenmlen, &no_exact_ce,
   algo, iter, salt, saltlen);
  if(no_exact_ce) nxproof = 1;
  if(!az_nsec3_insert(z, region, msg, node))
   return 0;
 }

 if(nxproof) {
  uint8_t* nx;
  size_t nxlen;

  az_nsec3_get_nextcloser(cenm, qname, qname_len, &nx, &nxlen);

  node = az_nsec3_find_cover(z, nx, nxlen, algo, iter, salt,
   saltlen);
  if(!az_nsec3_insert(z, region, msg, node))
   return 0;
 }
 if(wcproof) {

  uint8_t wc[LDNS_MAX_DOMAINLEN];
  size_t wclen;
  if(cenmlen+2 > sizeof(wc))
   return 0;
  wc[0] = 1;
  wc[1] = (uint8_t)'*';
  memmove(wc+2, cenm, cenmlen);
  wclen = cenmlen+2;

  node = az_nsec3_find_cover(z, wc, wclen, algo, iter, salt,
   saltlen);
  if(!az_nsec3_insert(z, region, msg, node))
   return 0;
 }
 return 1;
}
