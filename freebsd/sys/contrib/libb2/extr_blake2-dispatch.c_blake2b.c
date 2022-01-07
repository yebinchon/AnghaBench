
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int blake2b_ptr (int *,void const*,void const*,size_t,size_t,size_t) ;

int blake2b( uint8_t *out, const void *in, const void *key, size_t outlen, size_t inlen, size_t keylen )
{
  return blake2b_ptr( out, in, key, outlen, inlen, keylen );
}
