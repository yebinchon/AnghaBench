
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ports; } ;
typedef TYPE_2__ cache_switch_t ;
struct TYPE_4__ {int is_leaf; } ;


 int TRUE ;

__attribute__((used)) static void cache_sw_set_leaf(cache_switch_t * p_sw)
{
 p_sw->ports[0].is_leaf = TRUE;
}
