
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blake2s_state ;
typedef int blake2s_param ;


 int blake2s_init_param_ptr (int *,int const*) ;

int blake2s_init_param( blake2s_state *S, const blake2s_param *P )
{
  return blake2s_init_param_ptr( S, P );
}
