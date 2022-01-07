
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int krb5_context ;
typedef TYPE_1__* gsskrb5_cred ;
typedef scalar_t__ gss_cred_id_t ;
typedef int gss_buffer_t ;
struct TYPE_2__ {int cred_flags; } ;
typedef scalar_t__ OM_uint32 ;


 int GSS_CF_NO_CI_FLAGS ;
 scalar_t__ GSS_C_NO_CREDENTIAL ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;

__attribute__((used)) static OM_uint32
no_ci_flags(OM_uint32 *minor_status,
     krb5_context context,
     gss_cred_id_t *cred_handle,
     const gss_buffer_t value)
{
    gsskrb5_cred cred;

    if (cred_handle == ((void*)0) || *cred_handle == GSS_C_NO_CREDENTIAL) {
 *minor_status = 0;
 return GSS_S_FAILURE;
    }

    cred = (gsskrb5_cred)*cred_handle;
    cred->cred_flags |= GSS_CF_NO_CI_FLAGS;

    *minor_status = 0;
    return GSS_S_COMPLETE;

}
