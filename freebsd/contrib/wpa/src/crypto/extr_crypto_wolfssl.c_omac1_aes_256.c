
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int omac1_aes_vector (int const*,int,int,int const**,size_t*,int *) ;

int omac1_aes_256(const u8 *key, const u8 *data, size_t data_len, u8 *mac)
{
 return omac1_aes_vector(key, 32, 1, &data, &data_len, mac);
}
