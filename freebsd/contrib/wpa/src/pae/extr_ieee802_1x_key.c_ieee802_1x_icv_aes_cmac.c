
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_ERROR ;
 int omac1_aes_128 (int const*,int const*,size_t,int *) ;
 int omac1_aes_256 (int const*,int const*,size_t,int *) ;
 int wpa_printf (int ,char*) ;

int ieee802_1x_icv_aes_cmac(const u8 *ick, size_t ick_bytes, const u8 *msg,
       size_t msg_bytes, u8 *icv)
{
 int res;

 if (ick_bytes == 16)
  res = omac1_aes_128(ick, msg, msg_bytes, icv);
 else if (ick_bytes == 32)
  res = omac1_aes_256(ick, msg, msg_bytes, icv);
 else
  return -1;
 if (res) {
  wpa_printf(MSG_ERROR,
      "MKA: AES-CMAC failed for ICV calculation");
  return -1;
 }
 return 0;
}
