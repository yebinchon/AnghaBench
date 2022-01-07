
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int len_buf ;


 int MSG_EXCESSIVE ;
 int WPA_PUT_BE64 (int const*,size_t) ;
 int ghash (int const*,int const*,int,int const*) ;
 int ghash_start (int const*) ;
 int wpa_hexdump_key (int ,char*,int const*,int) ;

__attribute__((used)) static void aes_gcm_ghash(const u8 *H, const u8 *aad, size_t aad_len,
     const u8 *crypt, size_t crypt_len, u8 *S)
{
 u8 len_buf[16];







 ghash_start(S);
 ghash(H, aad, aad_len, S);
 ghash(H, crypt, crypt_len, S);
 WPA_PUT_BE64(len_buf, aad_len * 8);
 WPA_PUT_BE64(len_buf + 8, crypt_len * 8);
 ghash(H, len_buf, sizeof(len_buf), S);

 wpa_hexdump_key(MSG_EXCESSIVE, "S = GHASH_H(...)", S, 16);
}
