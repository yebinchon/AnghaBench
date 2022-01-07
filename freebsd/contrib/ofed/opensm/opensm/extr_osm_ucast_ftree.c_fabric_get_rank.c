
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ leaf_switch_rank; } ;
typedef TYPE_1__ ftree_fabric_t ;



__attribute__((used)) static uint8_t fabric_get_rank(ftree_fabric_t * p_ftree)
{
 return p_ftree->leaf_switch_rank + 1;
}
