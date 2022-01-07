
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ibnd_port_t ;
typedef int ibnd_fabric_t ;
struct TYPE_2__ {int lid2guid; } ;
typedef TYPE_1__ f_internal_t ;


 int GINT_TO_POINTER (int ) ;
 scalar_t__ g_hash_table_lookup (int ,int ) ;

ibnd_port_t *ibnd_find_port_lid(ibnd_fabric_t * fabric,
    uint16_t lid)
{
 ibnd_port_t *port;
 f_internal_t *f = (f_internal_t *)fabric;

 port = (ibnd_port_t *)g_hash_table_lookup(f->lid2guid,
     GINT_TO_POINTER(lid));

 return port;
}
