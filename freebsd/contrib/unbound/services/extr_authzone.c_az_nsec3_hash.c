
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int p ;


 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ N3HASHBUFLEN ;
 int memmove (unsigned char*,int *,size_t) ;
 size_t nsec3_hash_algo_size_supported (int) ;
 int query_dname_tolower (unsigned char*) ;
 int secalgo_nsec3_hash (int,unsigned char*,size_t,unsigned char*) ;

__attribute__((used)) static size_t
az_nsec3_hash(uint8_t* buf, size_t buflen, uint8_t* nm, size_t nmlen,
 int algo, size_t iter, uint8_t* salt, size_t saltlen)
{
 size_t hlen = nsec3_hash_algo_size_supported(algo);


 unsigned char p[LDNS_MAX_DOMAINLEN+1+N3HASHBUFLEN+256];
 size_t i;
 if(nmlen+saltlen > sizeof(p) || hlen+saltlen > sizeof(p))
  return 0;
 if(hlen > buflen)
  return 0;

 memmove(p, nm, nmlen);
 query_dname_tolower(p);
 memmove(p+nmlen, salt, saltlen);
 (void)secalgo_nsec3_hash(algo, p, nmlen+saltlen, (unsigned char*)buf);
 for(i=0; i<iter; i++) {

  memmove(p, buf, hlen);
  memmove(p+hlen, salt, saltlen);
  (void)secalgo_nsec3_hash(algo, p, hlen+saltlen,
   (unsigned char*)buf);
 }
 return hlen;
}
