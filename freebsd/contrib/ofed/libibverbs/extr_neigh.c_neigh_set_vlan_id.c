
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct get_neigh_handler {int vid; } ;



void neigh_set_vlan_id(struct get_neigh_handler *neigh_handler, uint16_t vid)
{
 if (vid <= 0xfff)
  neigh_handler->vid = vid;
}
