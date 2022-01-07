
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct _gss_name {int gn_mn; int gn_value; int gn_type; } ;
typedef scalar_t__ gss_name_t ;
typedef TYPE_1__* gss_buffer_t ;
typedef scalar_t__ gss_OID ;
struct TYPE_5__ {scalar_t__ length; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 scalar_t__ GSS_C_NO_NAME ;
 scalar_t__ GSS_C_NO_OID ;
 scalar_t__ GSS_C_NT_ANONYMOUS ;
 scalar_t__ GSS_C_NT_EXPORT_NAME ;
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE ;
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE_X ;
 scalar_t__ GSS_C_NT_MACHINE_UID_NAME ;
 scalar_t__ GSS_C_NT_STRING_UID_NAME ;
 scalar_t__ GSS_C_NT_USER_NAME ;
 scalar_t__ GSS_KRB5_NT_PRINCIPAL_NAME ;
 scalar_t__ GSS_S_BAD_NAME ;
 scalar_t__ GSS_S_BAD_NAMETYPE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int SLIST_INIT (int *) ;
 scalar_t__ _gss_copy_buffer (scalar_t__*,TYPE_1__* const,int *) ;
 scalar_t__ _gss_copy_oid (scalar_t__*,scalar_t__,int *) ;
 scalar_t__ _gss_import_export_name (scalar_t__*,TYPE_1__* const,scalar_t__*) ;
 int free (struct _gss_name*) ;
 scalar_t__ gss_oid_equal (scalar_t__,scalar_t__) ;
 int gss_release_name (scalar_t__*,scalar_t__*) ;
 struct _gss_name* malloc (int) ;
 int memset (struct _gss_name*,int ,int) ;

OM_uint32
gss_import_name(OM_uint32 *minor_status,
    const gss_buffer_t input_name_buffer,
    const gss_OID input_name_type,
    gss_name_t *output_name)
{
 gss_OID name_type = input_name_type;
 OM_uint32 major_status;
 struct _gss_name *name;

 *output_name = GSS_C_NO_NAME;

 if (input_name_buffer->length == 0) {
  *minor_status = 0;
  return (GSS_S_BAD_NAME);
 }




 if (name_type == GSS_C_NO_OID)
  name_type = GSS_C_NT_USER_NAME;






 if (gss_oid_equal(name_type, GSS_C_NT_EXPORT_NAME)) {
  return _gss_import_export_name(minor_status,
      input_name_buffer, output_name);
 }






 if (!gss_oid_equal(name_type, GSS_C_NT_USER_NAME)
     && !gss_oid_equal(name_type, GSS_C_NT_MACHINE_UID_NAME)
     && !gss_oid_equal(name_type, GSS_C_NT_STRING_UID_NAME)
     && !gss_oid_equal(name_type, GSS_C_NT_HOSTBASED_SERVICE_X)
     && !gss_oid_equal(name_type, GSS_C_NT_HOSTBASED_SERVICE)
     && !gss_oid_equal(name_type, GSS_C_NT_ANONYMOUS)
     && !gss_oid_equal(name_type, GSS_KRB5_NT_PRINCIPAL_NAME)) {
  *minor_status = 0;
  return (GSS_S_BAD_NAMETYPE);
 }

 *minor_status = 0;
 name = malloc(sizeof(struct _gss_name));
 if (!name) {
  *minor_status = ENOMEM;
  return (GSS_S_FAILURE);
 }
 memset(name, 0, sizeof(struct _gss_name));

 major_status = _gss_copy_oid(minor_status,
     name_type, &name->gn_type);
 if (major_status) {
  free(name);
  return (GSS_S_FAILURE);
 }

 major_status = _gss_copy_buffer(minor_status,
     input_name_buffer, &name->gn_value);
 if (major_status) {
  gss_name_t rname = (gss_name_t)name;
  gss_release_name(minor_status, &rname);
  return (GSS_S_FAILURE);
 }

 SLIST_INIT(&name->gn_mn);

 *output_name = (gss_name_t) name;
 return (GSS_S_COMPLETE);
}
