
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ switch_t ;
struct TYPE_5__ {scalar_t__ priv; } ;
typedef TYPE_2__ osm_switch_t ;



__attribute__((used)) static unsigned get_lash_id(osm_switch_t * p_sw)
{
 return ((switch_t *) p_sw->priv)->id;
}
