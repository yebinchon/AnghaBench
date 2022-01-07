
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int aes_gcm_ae (int const*,size_t,int const*,size_t,int *,int ,int const*,size_t,int *,int *) ;

int aes_gmac(const u8 *key, size_t key_len, const u8 *iv, size_t iv_len,
      const u8 *aad, size_t aad_len, u8 *tag)
{
 return aes_gcm_ae(key, key_len, iv, iv_len, ((void*)0), 0, aad, aad_len, ((void*)0),
     tag);
}
