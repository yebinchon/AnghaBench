
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int omac1_aes_vector (int const*,int,size_t,int const**,size_t const*,int *) ;

int omac1_aes_128_vector(const u8 *key, size_t num_elem,
    const u8 *addr[], const size_t *len, u8 *mac)
{
 return omac1_aes_vector(key, 16, num_elem, addr, len, mac);
}
