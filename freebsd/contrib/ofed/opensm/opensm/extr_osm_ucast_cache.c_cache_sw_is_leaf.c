
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ports; } ;
typedef TYPE_2__ cache_switch_t ;
typedef int boolean_t ;
struct TYPE_4__ {int is_leaf; } ;



__attribute__((used)) static boolean_t cache_sw_is_leaf(cache_switch_t * p_sw)
{
 return p_sw->ports[0].is_leaf;
}
