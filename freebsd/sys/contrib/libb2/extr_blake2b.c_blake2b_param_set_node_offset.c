
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int node_offset; } ;
typedef TYPE_1__ blake2b_param ;



__attribute__((used)) static inline int blake2b_param_set_node_offset( blake2b_param *P, const uint64_t node_offset )
{
  P->node_offset = node_offset;
  return 0;
}
