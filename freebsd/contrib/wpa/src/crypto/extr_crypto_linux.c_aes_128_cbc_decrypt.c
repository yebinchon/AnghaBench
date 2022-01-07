
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int aes_128_cbc_oper (int const*,int ,int const*,int *,size_t) ;

int aes_128_cbc_decrypt(const u8 *key, const u8 *iv, u8 *data, size_t data_len)
{
 return aes_128_cbc_oper(key, 0, iv, data, data_len);
}
