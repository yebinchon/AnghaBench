
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct auth_zone {size_t namelen; int name; } ;
typedef int hash ;


 int N3HASHBUFLEN ;
 size_t az_nsec3_hash (scalar_t__*,int,scalar_t__*,size_t,int,size_t,scalar_t__*,size_t) ;
 int memmove (scalar_t__*,int ,size_t) ;
 int sldns_b32_ntop_extended_hex (scalar_t__*,size_t,char*,size_t) ;

__attribute__((used)) static int
az_nsec3_hashname(struct auth_zone* z, uint8_t* hashname, size_t* hashnmlen,
 uint8_t* nm, size_t nmlen, int algo, size_t iter, uint8_t* salt,
 size_t saltlen)
{
 uint8_t hash[N3HASHBUFLEN];
 size_t hlen;
 int ret;
 hlen = az_nsec3_hash(hash, sizeof(hash), nm, nmlen, algo, iter,
  salt, saltlen);
 if(!hlen) return 0;

 if(*hashnmlen < hlen*2+1+z->namelen)
  return 0;
 ret = sldns_b32_ntop_extended_hex(hash, hlen, (char*)(hashname+1),
  (*hashnmlen)-1);
 if(ret<1)
  return 0;
 hashname[0] = (uint8_t)ret;
 ret++;
 if((*hashnmlen) - ret < z->namelen)
  return 0;
 memmove(hashname+ret, z->name, z->namelen);
 *hashnmlen = z->namelen+(size_t)ret;
 return 1;
}
