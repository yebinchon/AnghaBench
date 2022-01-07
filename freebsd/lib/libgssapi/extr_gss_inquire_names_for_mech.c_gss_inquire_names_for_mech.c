
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {scalar_t__ (* gm_inquire_names_for_mech ) (scalar_t__*,int const,int *) ;} ;
typedef int gss_OID_set ;
typedef int gss_OID ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_NO_OID_SET ;
 int GSS_C_NT_HOSTBASED_SERVICE ;
 int GSS_C_NT_USER_NAME ;
 scalar_t__ GSS_S_BAD_MECH ;
 scalar_t__ GSS_S_COMPLETE ;
 struct _gss_mech_switch* _gss_find_mech_switch (int const) ;
 scalar_t__ gss_add_oid_set_member (scalar_t__*,int ,int *) ;
 scalar_t__ gss_create_empty_oid_set (scalar_t__*,int *) ;
 int gss_release_oid_set (scalar_t__*,int *) ;
 scalar_t__ stub1 (scalar_t__*,int const,int *) ;

OM_uint32
gss_inquire_names_for_mech(OM_uint32 *minor_status,
    const gss_OID mechanism,
    gss_OID_set *name_types)
{
 OM_uint32 major_status;
 struct _gss_mech_switch *m = _gss_find_mech_switch(mechanism);

 *minor_status = 0;
 *name_types = GSS_C_NO_OID_SET;
 if (!m)
  return (GSS_S_BAD_MECH);





 if (m->gm_inquire_names_for_mech) {
  return (m->gm_inquire_names_for_mech(minor_status,
       mechanism, name_types));
 } else {
  major_status = gss_create_empty_oid_set(minor_status,
      name_types);
  if (major_status)
   return (major_status);
  major_status = gss_add_oid_set_member(minor_status,
      GSS_C_NT_HOSTBASED_SERVICE, name_types);
  if (major_status) {
   OM_uint32 junk;
   gss_release_oid_set(&junk, name_types);
   return (major_status);
  }
  major_status = gss_add_oid_set_member(minor_status,
      GSS_C_NT_USER_NAME, name_types);
  if (major_status) {
   OM_uint32 junk;
   gss_release_oid_set(&junk, name_types);
   return (major_status);
  }
 }

 return (GSS_S_COMPLETE);
}
