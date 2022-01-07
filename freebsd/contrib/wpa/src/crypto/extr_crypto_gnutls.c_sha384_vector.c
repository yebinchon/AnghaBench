
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GCRY_MD_SHA384 ;
 int gnutls_digest_vector (int ,size_t,int const**,size_t const*,int *) ;

int sha384_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 return gnutls_digest_vector(GCRY_MD_SHA384, num_elem, addr, len, mac);
}
