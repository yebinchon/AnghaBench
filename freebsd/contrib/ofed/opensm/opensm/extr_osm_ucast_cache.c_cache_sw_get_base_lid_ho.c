
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* ports; } ;
typedef TYPE_2__ cache_switch_t ;
struct TYPE_4__ {int remote_lid_ho; } ;



__attribute__((used)) static uint16_t cache_sw_get_base_lid_ho(cache_switch_t * p_sw)
{
 return p_sw->ports[0].remote_lid_ho;
}
