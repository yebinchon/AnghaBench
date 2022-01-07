
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int context ;


 int aes_kdf (int const*,int,char*,int *,int,int,int *) ;
 int os_memcpy (int *,int const*,size_t) ;
 int os_memset (int *,int ,int) ;

int ieee802_1x_kek_aes_cmac(const u8 *cak, size_t cak_bytes, const u8 *ckn,
       size_t ckn_bytes, u8 *kek, size_t kek_bytes)
{
 u8 context[16];


 os_memset(context, 0, sizeof(context));
 os_memcpy(context, ckn, (ckn_bytes < 16) ? ckn_bytes : 16);

 return aes_kdf(cak, 8 * cak_bytes, "IEEE8021 KEK",
         context, sizeof(context) * 8,
         8 * kek_bytes, kek);
}
