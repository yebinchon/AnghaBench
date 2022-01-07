
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int WPA_NONCE_LEN ;

__attribute__((used)) static int tdls_nonce_set(const u8 *nonce)
{
 int i;

 for (i = 0; i < WPA_NONCE_LEN; i++) {
  if (nonce[i])
   return 1;
 }

 return 0;
}
