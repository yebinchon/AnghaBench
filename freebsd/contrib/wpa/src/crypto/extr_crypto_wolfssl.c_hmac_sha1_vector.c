
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WC_SHA ;
 int wolfssl_hmac_vector (int ,int const*,size_t,size_t,int const**,size_t const*,int *,int) ;

int hmac_sha1_vector(const u8 *key, size_t key_len, size_t num_elem,
       const u8 *addr[], const size_t *len, u8 *mac)
{
 return wolfssl_hmac_vector(WC_SHA, key, key_len, num_elem, addr, len,
       mac, 20);
}
