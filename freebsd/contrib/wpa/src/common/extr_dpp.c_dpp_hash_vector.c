
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dpp_curve_params {int hash_len; } ;


 int sha256_vector (size_t,int const**,size_t const*,int *) ;
 int sha384_vector (size_t,int const**,size_t const*,int *) ;
 int sha512_vector (size_t,int const**,size_t const*,int *) ;

__attribute__((used)) static int dpp_hash_vector(const struct dpp_curve_params *curve,
      size_t num_elem, const u8 *addr[], const size_t *len,
      u8 *mac)
{
 if (curve->hash_len == 32)
  return sha256_vector(num_elem, addr, len, mac);
 if (curve->hash_len == 48)
  return sha384_vector(num_elem, addr, len, mac);
 if (curve->hash_len == 64)
  return sha512_vector(num_elem, addr, len, mac);
 return -1;
}
