
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int blake2s_state ;


 int blake2s_final_ptr (int *,int *,size_t) ;

int blake2s_final( blake2s_state *S, uint8_t *out, size_t outlen )
{
  return blake2s_final_ptr( S, out, outlen );
}
