
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blake2b_state ;
typedef int blake2b_param ;


 int blake2b_init_param_ptr (int *,int const*) ;

int blake2b_init_param( blake2b_state *S, const blake2b_param *P )
{
  return blake2b_init_param_ptr( S, P );
}
