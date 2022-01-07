
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int context ;


 int ETH_ALEN ;
 int aes_kdf (int const*,int,char*,int *,int,int,int *) ;
 int joint_two_mac (int const*,int const*,int *) ;

int ieee802_1x_cak_aes_cmac(const u8 *msk, size_t msk_bytes, const u8 *mac1,
       const u8 *mac2, u8 *cak, size_t cak_bytes)
{
 u8 context[2 * ETH_ALEN];

 joint_two_mac(mac1, mac2, context);
 return aes_kdf(msk, 8 * msk_bytes, "IEEE8021 EAP CAK",
         context, sizeof(context) * 8, 8 * cak_bytes, cak);
}
