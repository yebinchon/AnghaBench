
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_2__ {scalar_t__ value; } ;
struct rpc_gss_data {scalar_t__ gd_name; TYPE_1__ gd_verf; } ;
typedef int OM_uint32 ;
typedef struct rpc_gss_data AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (struct rpc_gss_data*) ;
 scalar_t__ GSS_C_NO_NAME ;
 int TRUE ;
 int gss_release_name (int *,scalar_t__*) ;
 int log_debug (char*) ;
 int mem_free (struct rpc_gss_data*,int) ;
 int rpc_gss_destroy_context (struct rpc_gss_data*,int ) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_gss_buffer_desc ;

__attribute__((used)) static void
rpc_gss_destroy(AUTH *auth)
{
 struct rpc_gss_data *gd;
 OM_uint32 min_stat;

 log_debug("in rpc_gss_destroy()");

 gd = AUTH_PRIVATE(auth);

 rpc_gss_destroy_context(auth, TRUE);

 if (gd->gd_name != GSS_C_NO_NAME)
  gss_release_name(&min_stat, &gd->gd_name);
 if (gd->gd_verf.value)
  xdr_free((xdrproc_t) xdr_gss_buffer_desc,
      (char *) &gd->gd_verf);

 mem_free(gd, sizeof(*gd));
 mem_free(auth, sizeof(*auth));
}
