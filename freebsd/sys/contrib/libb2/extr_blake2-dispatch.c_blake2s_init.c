
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blake2s_state ;


 int blake2s_init_ptr (int *,size_t) ;

int blake2s_init( blake2s_state *S, size_t outlen )
{
  return blake2s_init_ptr( S, outlen );
}
