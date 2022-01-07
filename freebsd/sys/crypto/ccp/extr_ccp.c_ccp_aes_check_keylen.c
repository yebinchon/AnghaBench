
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_AES_XTS ;
 int EINVAL ;

__attribute__((used)) static int
ccp_aes_check_keylen(int alg, int klen)
{

 switch (klen) {
 case 128:
 case 192:
  if (alg == CRYPTO_AES_XTS)
   return (EINVAL);
  break;
 case 256:
  break;
 case 512:
  if (alg != CRYPTO_AES_XTS)
   return (EINVAL);
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
