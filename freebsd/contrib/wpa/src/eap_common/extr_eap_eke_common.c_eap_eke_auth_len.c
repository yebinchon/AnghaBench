
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




 int SHA1_MAC_LEN ;
 int SHA256_MAC_LEN ;

__attribute__((used)) static int eap_eke_auth_len(u8 prf)
{
 switch (prf) {
 case 129:
  return SHA1_MAC_LEN;
 case 128:
  return SHA256_MAC_LEN;
 }

 return -1;
}
