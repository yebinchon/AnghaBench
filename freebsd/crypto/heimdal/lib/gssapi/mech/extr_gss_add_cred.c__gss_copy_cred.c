
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _gss_mechanism_cred {int gmc_cred; int * gmc_mech_oid; TYPE_1__* gmc_mech; } ;
typedef TYPE_1__* gssapi_mech_interface ;
typedef int gss_name_t ;
typedef int gss_cred_usage_t ;
typedef int gss_cred_id_t ;
struct TYPE_3__ {int gm_mech_oid; int (* gm_release_cred ) (scalar_t__*,int *) ;int (* gm_release_name ) (scalar_t__*,int *) ;scalar_t__ (* gm_add_cred ) (scalar_t__*,int ,int ,int *,int ,scalar_t__,scalar_t__,int *,int ,int ,int ) ;scalar_t__ (* gm_inquire_cred_by_mech ) (scalar_t__*,int ,int *,int *,scalar_t__*,scalar_t__*,int *) ;} ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_NO_CREDENTIAL ;
 int _gss_mg_error (TYPE_1__*,scalar_t__,scalar_t__) ;
 struct _gss_mechanism_cred* malloc (int) ;
 scalar_t__ stub1 (scalar_t__*,int ,int *,int *,scalar_t__*,scalar_t__*,int *) ;
 scalar_t__ stub2 (scalar_t__*,int ,int ,int *,int ,scalar_t__,scalar_t__,int *,int ,int ,int ) ;
 int stub3 (scalar_t__*,int *) ;
 int stub4 (scalar_t__*,int *) ;

struct _gss_mechanism_cred *
_gss_copy_cred(struct _gss_mechanism_cred *mc)
{
 struct _gss_mechanism_cred *new_mc;
 gssapi_mech_interface m = mc->gmc_mech;
 OM_uint32 major_status, minor_status;
 gss_name_t name;
 gss_cred_id_t cred;
 OM_uint32 initiator_lifetime, acceptor_lifetime;
 gss_cred_usage_t cred_usage;

 major_status = m->gm_inquire_cred_by_mech(&minor_status,
     mc->gmc_cred, mc->gmc_mech_oid,
     &name, &initiator_lifetime, &acceptor_lifetime, &cred_usage);
 if (major_status) {
  _gss_mg_error(m, major_status, minor_status);
  return (0);
 }

 major_status = m->gm_add_cred(&minor_status,
     GSS_C_NO_CREDENTIAL, name, mc->gmc_mech_oid,
     cred_usage, initiator_lifetime, acceptor_lifetime,
     &cred, 0, 0, 0);
 m->gm_release_name(&minor_status, &name);

 if (major_status) {
  _gss_mg_error(m, major_status, minor_status);
  return (0);
 }

 new_mc = malloc(sizeof(struct _gss_mechanism_cred));
 if (!new_mc) {
  m->gm_release_cred(&minor_status, &cred);
  return (0);
 }
 new_mc->gmc_mech = m;
 new_mc->gmc_mech_oid = &m->gm_mech_oid;
 new_mc->gmc_cred = cred;

 return (new_mc);
}
