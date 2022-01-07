
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




 int IKEV2_MAX_HASH_LEN ;
 int hmac_md5 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha1 (int const*,size_t,int const*,size_t,int *) ;
 int os_memcpy (int *,int *,int) ;

int ikev2_integ_hash(int alg, const u8 *key, size_t key_len, const u8 *data,
       size_t data_len, u8 *hash)
{
 u8 tmphash[IKEV2_MAX_HASH_LEN];

 switch (alg) {
 case 128:
  if (key_len != 20)
   return -1;
  if (hmac_sha1(key, key_len, data, data_len, tmphash) < 0)
   return -1;
  os_memcpy(hash, tmphash, 12);
  break;
 case 129:
  if (key_len != 16)
   return -1;
  if (hmac_md5(key, key_len, data, data_len, tmphash) < 0)
   return -1;
  os_memcpy(hash, tmphash, 12);
  break;
 default:
  return -1;
 }

 return 0;
}
