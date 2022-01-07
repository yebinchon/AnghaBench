
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ ap_req_nofail; } ;
typedef TYPE_1__ krb5_verify_init_creds_opt ;
typedef int krb5_context ;
typedef int krb5_boolean ;


 int FALSE ;
 int KRB5_VERIFY_INIT_CREDS_OPT_AP_REQ_NOFAIL ;
 int TRUE ;
 scalar_t__ krb5_config_get_bool (int ,int *,char*,char*,int *) ;

__attribute__((used)) static krb5_boolean
fail_verify_is_ok (krb5_context context,
     krb5_verify_init_creds_opt *options)
{
    if ((options->flags & KRB5_VERIFY_INIT_CREDS_OPT_AP_REQ_NOFAIL
  && options->ap_req_nofail != 0)
 || krb5_config_get_bool (context,
     ((void*)0),
     "libdefaults",
     "verify_ap_req_nofail",
     ((void*)0)))
 return FALSE;
    else
 return TRUE;
}
