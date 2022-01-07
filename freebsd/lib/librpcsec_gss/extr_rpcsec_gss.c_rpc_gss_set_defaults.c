
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int gc_svc; } ;
struct rpc_gss_data {int gd_qop; TYPE_1__ gd_cred; int gd_mech; } ;
typedef int rpc_gss_service_t ;
typedef int bool_t ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int FALSE ;
 int GSS_C_QOP_DEFAULT ;
 int TRUE ;
 int rpc_gss_oid_to_mech (int ,char const**) ;
 int rpc_gss_qop_to_num (char const*,char const*,int *) ;

bool_t
rpc_gss_set_defaults(AUTH *auth, rpc_gss_service_t service, const char *qop)
{
 struct rpc_gss_data *gd;
 u_int qop_num;
 const char *mechanism;

 gd = AUTH_PRIVATE(auth);
 if (!rpc_gss_oid_to_mech(gd->gd_mech, &mechanism)) {
  return (FALSE);
 }

 if (qop) {
  if (!rpc_gss_qop_to_num(qop, mechanism, &qop_num)) {
   return (FALSE);
  }
 } else {
  qop_num = GSS_C_QOP_DEFAULT;
 }

 gd->gd_cred.gc_svc = service;
 gd->gd_qop = qop_num;
 return (TRUE);
}
