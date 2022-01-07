
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int blake2b_state ;


 int blake2b_update_ptr (int *,int const*,size_t) ;

int blake2b_update( blake2b_state *S, const uint8_t *in, size_t inlen )
{
  return blake2b_update_ptr( S, in, inlen );
}
