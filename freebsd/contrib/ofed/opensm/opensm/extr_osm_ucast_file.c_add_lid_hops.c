
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {unsigned int num_ports; } ;
typedef TYPE_1__ osm_switch_t ;
typedef int osm_opensm_t ;
typedef int ib_net64_t ;


 int osm_switch_set_hops (TYPE_1__*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void add_lid_hops(osm_opensm_t * p_osm, osm_switch_t * p_sw,
    uint16_t lid, ib_net64_t guid,
    uint8_t hops[], unsigned len)
{
 uint8_t i;

 if (len > p_sw->num_ports)
  len = p_sw->num_ports;

 for (i = 0; i < len; i++)
  osm_switch_set_hops(p_sw, lid, i, hops[i]);
}
