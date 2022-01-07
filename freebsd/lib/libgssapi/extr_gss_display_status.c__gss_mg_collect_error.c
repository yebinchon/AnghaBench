
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {int dummy; } ;
typedef int gss_OID ;
typedef int OM_uint32 ;


 struct _gss_mech_switch* _gss_find_mech_switch (int ) ;
 int _gss_mg_error (struct _gss_mech_switch*,int ,int ) ;

void
_gss_mg_collect_error(gss_OID mech, OM_uint32 maj, OM_uint32 min)
{
 struct _gss_mech_switch *m;

 m = _gss_find_mech_switch(mech);
 if (m != ((void*)0))
  _gss_mg_error(m, maj, min);
}
