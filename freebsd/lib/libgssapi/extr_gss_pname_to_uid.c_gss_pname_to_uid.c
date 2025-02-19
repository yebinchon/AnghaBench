
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct _gss_name {int dummy; } ;
struct _gss_mechanism_name {int gmn_name; } ;
struct _gss_mech_switch {scalar_t__ (* gm_pname_to_uid ) (scalar_t__*,int ,int const,int *) ;} ;
typedef scalar_t__ gss_name_t ;
typedef int gss_OID ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ const GSS_C_NO_NAME ;
 scalar_t__ GSS_S_BAD_MECH ;
 scalar_t__ GSS_S_BAD_NAME ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_UNAVAILABLE ;
 struct _gss_mech_switch* _gss_find_mech_switch (int const) ;
 scalar_t__ _gss_find_mn (scalar_t__*,struct _gss_name*,int const,struct _gss_mechanism_name**) ;
 int _gss_mg_error (struct _gss_mech_switch*,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__*,int ,int const,int *) ;

OM_uint32
gss_pname_to_uid(OM_uint32 *minor_status, const gss_name_t pname,
    const gss_OID mech, uid_t *uidp)
{
 struct _gss_name *name = (struct _gss_name *) pname;
 struct _gss_mech_switch *m;
 struct _gss_mechanism_name *mn;
 OM_uint32 major_status;

 *minor_status = 0;

 if (pname == GSS_C_NO_NAME)
  return (GSS_S_BAD_NAME);

 m = _gss_find_mech_switch(mech);
 if (!m)
  return (GSS_S_BAD_MECH);

 if (m->gm_pname_to_uid == ((void*)0))
  return (GSS_S_UNAVAILABLE);

 major_status = _gss_find_mn(minor_status, name, mech, &mn);
 if (major_status != GSS_S_COMPLETE) {
  _gss_mg_error(m, major_status, *minor_status);
  return (major_status);
 }

 major_status = (*m->gm_pname_to_uid)(minor_status, mn->gmn_name,
     mech, uidp);
 if (major_status != GSS_S_COMPLETE)
  _gss_mg_error(m, major_status, *minor_status);

 return (major_status);
}
