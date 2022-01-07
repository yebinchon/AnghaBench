
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_OID ;
typedef int OM_uint32 ;


 int _gss_mg_collect_error (int ,int ,int ) ;

void
gss_mg_collect_error(gss_OID mech, OM_uint32 maj, OM_uint32 min)
{
 _gss_mg_collect_error(mech, maj, min);
}
