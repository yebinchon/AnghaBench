
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 int MSG_EXCESSIVE ;
 int WPA_PUT_BE16 (int*,int ) ;
 int aes_encrypt (void*,int*,int*) ;
 int wpa_hexdump_key (int ,char*,int*,size_t) ;

__attribute__((used)) static void aes_ccm_encr_auth(void *aes, size_t M, u8 *x, u8 *a, u8 *auth)
{
 size_t i;
 u8 tmp[AES_BLOCK_SIZE];

 wpa_hexdump_key(MSG_EXCESSIVE, "CCM T", x, M);

 WPA_PUT_BE16(&a[AES_BLOCK_SIZE - 2], 0);
 aes_encrypt(aes, a, tmp);
 for (i = 0; i < M; i++)
  auth[i] = x[i] ^ tmp[i];
 wpa_hexdump_key(MSG_EXCESSIVE, "CCM U", auth, M);
}
