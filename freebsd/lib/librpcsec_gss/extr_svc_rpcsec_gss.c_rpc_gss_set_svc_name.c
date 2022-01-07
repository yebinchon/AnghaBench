
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_int ;
struct svc_rpc_gss_svc_name {void* sn_version; void* sn_program; int sn_cred; void* sn_req_time; void* sn_mech; int sn_principal; } ;
typedef int gss_name_t ;
typedef int gss_cred_id_t ;
struct TYPE_5__ {int length; void* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
struct TYPE_6__ {int count; void* elements; } ;
typedef TYPE_2__ gss_OID_set_desc ;
typedef void* gss_OID ;
typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 int GSS_C_ACCEPT ;
 int GSS_C_NT_HOSTBASED_SERVICE ;
 scalar_t__ GSS_S_COMPLETE ;
 int SLIST_INSERT_HEAD (int *,struct svc_rpc_gss_svc_name*,int ) ;
 int TRUE ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,void*,TYPE_2__*,int ,int *,int *,int *) ;
 scalar_t__ gss_import_name (scalar_t__*,TYPE_1__*,int ,int *) ;
 int gss_release_name (scalar_t__*,int *) ;
 struct svc_rpc_gss_svc_name* malloc (int) ;
 int rpc_gss_mech_to_oid (char const*,void**) ;
 int sn_link ;
 int strdup (char const*) ;
 int strlen (char const*) ;
 int svc_rpc_gss_init () ;
 int svc_rpc_gss_svc_names ;

bool_t
rpc_gss_set_svc_name(const char *principal, const char *mechanism,
    u_int req_time, u_int program, u_int version)
{
 OM_uint32 maj_stat, min_stat;
 struct svc_rpc_gss_svc_name *sname;
 gss_buffer_desc namebuf;
 gss_name_t name;
 gss_OID mech_oid;
 gss_OID_set_desc oid_set;
 gss_cred_id_t cred;

 svc_rpc_gss_init();

 if (!rpc_gss_mech_to_oid(mechanism, &mech_oid))
  return (FALSE);
 oid_set.count = 1;
 oid_set.elements = mech_oid;

 namebuf.value = (void *)(intptr_t) principal;
 namebuf.length = strlen(principal);

 maj_stat = gss_import_name(&min_stat, &namebuf,
       GSS_C_NT_HOSTBASED_SERVICE, &name);
 if (maj_stat != GSS_S_COMPLETE)
  return (FALSE);

 maj_stat = gss_acquire_cred(&min_stat, name,
     req_time, &oid_set, GSS_C_ACCEPT, &cred, ((void*)0), ((void*)0));
 if (maj_stat != GSS_S_COMPLETE)
  return (FALSE);

 gss_release_name(&min_stat, &name);

 sname = malloc(sizeof(struct svc_rpc_gss_svc_name));
 if (!sname)
  return (FALSE);
 sname->sn_principal = strdup(principal);
 sname->sn_mech = mech_oid;
 sname->sn_req_time = req_time;
 sname->sn_cred = cred;
 sname->sn_program = program;
 sname->sn_version = version;
 SLIST_INSERT_HEAD(&svc_rpc_gss_svc_names, sname, sn_link);

 return (TRUE);
}
