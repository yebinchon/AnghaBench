
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* rpc_gss_principal_t ;
typedef int gss_name_t ;
struct TYPE_8__ {size_t length; void* value; } ;
typedef TYPE_2__ gss_buffer_desc ;
typedef int gss_OID ;
typedef int bool_t ;
struct TYPE_7__ {int len; int name; } ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 int GSS_C_NT_USER_NAME ;
 scalar_t__ GSS_S_COMPLETE ;
 int TRUE ;
 scalar_t__ gss_canonicalize_name (scalar_t__*,int ,int ,int *) ;
 scalar_t__ gss_export_name (scalar_t__*,int ,TYPE_2__*) ;
 scalar_t__ gss_import_name (scalar_t__*,TYPE_2__*,int ,int *) ;
 int gss_release_buffer (scalar_t__*,TYPE_2__*) ;
 int gss_release_name (scalar_t__*,int *) ;
 int log_status (char*,int ,scalar_t__,scalar_t__) ;
 void* mem_alloc (int) ;
 int mem_free (void*,size_t) ;
 int memcpy (int ,void*,int) ;
 int rpc_gss_mech_to_oid (char const*,int *) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int svc_rpc_gss_init () ;

bool_t
rpc_gss_get_principal_name(rpc_gss_principal_t *principal,
    const char *mech, const char *name, const char *node, const char *domain)
{
 OM_uint32 maj_stat, min_stat;
 gss_OID mech_oid;
 size_t namelen;
 gss_buffer_desc buf;
 gss_name_t gss_name, gss_mech_name;
 rpc_gss_principal_t result;

 svc_rpc_gss_init();

 if (!rpc_gss_mech_to_oid(mech, &mech_oid))
  return (FALSE);





 namelen = strlen(name);
 if (node) {
  namelen += strlen(node) + 1;
 }
 if (domain) {
  namelen += strlen(domain) + 1;
 }

 buf.value = mem_alloc(namelen);
 buf.length = namelen;
 strcpy((char *) buf.value, name);
 if (node) {
  strcat((char *) buf.value, "/");
  strcat((char *) buf.value, node);
 }
 if (domain) {
  strcat((char *) buf.value, "@");
  strcat((char *) buf.value, domain);
 }





 maj_stat = gss_import_name(&min_stat, &buf,
     GSS_C_NT_USER_NAME, &gss_name);
 mem_free(buf.value, buf.length);
 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_import_name", mech_oid, maj_stat, min_stat);
  return (FALSE);
 }
 maj_stat = gss_canonicalize_name(&min_stat, gss_name, mech_oid,
     &gss_mech_name);
 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_canonicalize_name", mech_oid, maj_stat,
      min_stat);
  gss_release_name(&min_stat, &gss_name);
  return (FALSE);
 }
 gss_release_name(&min_stat, &gss_name);





 maj_stat = gss_export_name(&min_stat, gss_mech_name, &buf);
 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_export_name", mech_oid, maj_stat, min_stat);
  gss_release_name(&min_stat, &gss_mech_name);
  return (FALSE);
 }
 gss_release_name(&min_stat, &gss_mech_name);

 result = mem_alloc(sizeof(int) + buf.length);
 if (!result) {
  gss_release_buffer(&min_stat, &buf);
  return (FALSE);
 }
 result->len = buf.length;
 memcpy(result->name, buf.value, buf.length);
 gss_release_buffer(&min_stat, &buf);

 *principal = result;
 return (TRUE);
}
