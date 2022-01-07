
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EVP_sha384 () ;
 int openssl_digest_vector (int ,size_t,int const**,size_t const*,int *) ;

int sha384_vector(size_t num_elem, const u8 *addr[], const size_t *len,
    u8 *mac)
{
 return openssl_digest_vector(EVP_sha384(), num_elem, addr, len, mac);
}
