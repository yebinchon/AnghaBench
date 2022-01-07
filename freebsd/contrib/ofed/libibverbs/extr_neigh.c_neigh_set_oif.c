
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_neigh_handler {int oif; } ;



void neigh_set_oif(struct get_neigh_handler *neigh_handler, int oif)
{
 neigh_handler->oif = oif;
}
