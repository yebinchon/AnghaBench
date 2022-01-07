
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _gss_mechanism_cred {int gmc_cred; TYPE_1__* gmc_mech; int gc_mc; } ;
struct _gss_cred {int gmc_cred; TYPE_1__* gmc_mech; int gc_mc; } ;
typedef scalar_t__ gss_cred_id_t ;
struct TYPE_2__ {int (* gm_release_cred ) (scalar_t__*,int *) ;} ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_C_NO_CREDENTIAL ;
 scalar_t__ GSS_S_COMPLETE ;
 struct _gss_mechanism_cred* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct _gss_mechanism_cred*) ;
 int gmc_link ;
 int stub1 (scalar_t__*,int *) ;

OM_uint32
gss_release_cred(OM_uint32 *minor_status, gss_cred_id_t *cred_handle)
{
 struct _gss_cred *cred = (struct _gss_cred *) *cred_handle;
 struct _gss_mechanism_cred *mc;

 if (*cred_handle == GSS_C_NO_CREDENTIAL)
     return (GSS_S_COMPLETE);

 while (SLIST_FIRST(&cred->gc_mc)) {
  mc = SLIST_FIRST(&cred->gc_mc);
  SLIST_REMOVE_HEAD(&cred->gc_mc, gmc_link);
  mc->gmc_mech->gm_release_cred(minor_status, &mc->gmc_cred);
  free(mc);
 }
 free(cred);

 *minor_status = 0;
 *cred_handle = GSS_C_NO_CREDENTIAL;
 return (GSS_S_COMPLETE);
}
