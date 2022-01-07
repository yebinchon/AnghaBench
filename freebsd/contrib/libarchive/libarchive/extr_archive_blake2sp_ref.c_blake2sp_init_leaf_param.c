
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int outlen; } ;
typedef TYPE_1__ blake2s_state ;
struct TYPE_8__ {int inner_length; } ;
typedef TYPE_2__ blake2s_param ;


 int blake2s_init_param (TYPE_1__*,TYPE_2__ const*) ;

__attribute__((used)) static int blake2sp_init_leaf_param( blake2s_state *S, const blake2s_param *P )
{
  int err = blake2s_init_param(S, P);
  S->outlen = P->inner_length;
  return err;
}
