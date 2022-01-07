
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ word32 ;
typedef int u8 ;
typedef int Cmac ;


 scalar_t__ AES_BLOCK_SIZE ;
 scalar_t__ TEST_FAIL () ;
 int WC_CMAC_AES ;
 scalar_t__ wc_CmacFinal (int *,int *,scalar_t__*) ;
 scalar_t__ wc_CmacUpdate (int *,int const*,size_t const) ;
 scalar_t__ wc_InitCmac (int *,int const*,size_t,int ,int *) ;

int omac1_aes_vector(const u8 *key, size_t key_len, size_t num_elem,
       const u8 *addr[], const size_t *len, u8 *mac)
{
 Cmac cmac;
 size_t i;
 word32 sz;

 if (TEST_FAIL())
  return -1;

 if (wc_InitCmac(&cmac, key, key_len, WC_CMAC_AES, ((void*)0)) != 0)
  return -1;

 for (i = 0; i < num_elem; i++)
  if (wc_CmacUpdate(&cmac, addr[i], len[i]) != 0)
   return -1;

 sz = AES_BLOCK_SIZE;
 if (wc_CmacFinal(&cmac, mac, &sz) != 0 || sz != AES_BLOCK_SIZE)
  return -1;

 return 0;
}
