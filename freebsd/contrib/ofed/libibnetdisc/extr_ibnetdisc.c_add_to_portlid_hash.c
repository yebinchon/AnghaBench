
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int base_lid; int lmc; } ;
typedef TYPE_1__ ibnd_port_t ;
typedef int GHashTable ;


 int GINT_TO_POINTER (int) ;
 int g_hash_table_insert (int *,int ,TYPE_1__*) ;

void add_to_portlid_hash(ibnd_port_t * port, GHashTable *htable)
{
 uint16_t base_lid = port->base_lid;
 uint16_t lid_mask = ((1 << port->lmc) -1);
 uint16_t lid = 0;

 if (base_lid > 0 && base_lid <= 0xbfff) {


  for (lid = base_lid; lid <= (base_lid + lid_mask); lid++) {
   g_hash_table_insert(htable, GINT_TO_POINTER(lid), port);
  }
 }
}
