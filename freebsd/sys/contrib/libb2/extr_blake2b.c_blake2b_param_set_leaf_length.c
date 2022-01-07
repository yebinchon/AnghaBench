
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int leaf_length; } ;
typedef TYPE_1__ blake2b_param ;



__attribute__((used)) static inline int blake2b_param_set_leaf_length( blake2b_param *P, const uint32_t leaf_length )
{
  P->leaf_length = leaf_length;
  return 0;
}
