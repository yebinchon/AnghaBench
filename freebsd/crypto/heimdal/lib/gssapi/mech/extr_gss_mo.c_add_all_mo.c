
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* gssapi_mech_interface ;
typedef int gss_OID_set ;
struct TYPE_5__ {size_t gm_mo_num; TYPE_1__* gm_mo; } ;
struct TYPE_4__ {int flags; int option; } ;
typedef int OM_uint32 ;


 int gss_add_oid_set_member (int*,int ,int *) ;

__attribute__((used)) static void
add_all_mo(gssapi_mech_interface m, gss_OID_set *options, OM_uint32 mask)
{
    OM_uint32 minor;
    size_t n;

    for (n = 0; n < m->gm_mo_num; n++)
 if ((m->gm_mo[n].flags & mask) == mask)
     gss_add_oid_set_member(&minor, m->gm_mo[n].option, options);
}
