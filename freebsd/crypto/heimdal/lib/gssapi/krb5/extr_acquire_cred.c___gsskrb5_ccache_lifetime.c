
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_7__ {scalar_t__ endtime; } ;
struct TYPE_8__ {TYPE_1__ times; int server; int client; } ;
typedef TYPE_2__ krb5_creds ;
typedef int krb5_context ;
typedef int * krb5_const_realm ;
typedef int krb5_ccache ;
typedef int in_cred ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ KRB5_PRINC_NOMATCH ;
 int KRB5_TGS_NAME ;
 int _gsskrb5_clear_status () ;
 scalar_t__ krb5_cc_retrieve_cred (int ,int ,int ,TYPE_2__*,TYPE_2__*) ;
 int krb5_free_cred_contents (int ,TYPE_2__*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_make_principal (int ,int *,int *,int ,int *,int *) ;
 int * krb5_principal_get_realm (int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;

OM_uint32
__gsskrb5_ccache_lifetime(OM_uint32 *minor_status,
     krb5_context context,
     krb5_ccache id,
     krb5_principal principal,
     OM_uint32 *lifetime)
{
    krb5_creds in_cred, out_cred;
    krb5_const_realm realm;
    krb5_error_code kret;

    memset(&in_cred, 0, sizeof(in_cred));
    in_cred.client = principal;

    realm = krb5_principal_get_realm(context, principal);
    if (realm == ((void*)0)) {
 _gsskrb5_clear_status ();
 *minor_status = KRB5_PRINC_NOMATCH;
 return GSS_S_FAILURE;
    }

    kret = krb5_make_principal(context, &in_cred.server,
          realm, KRB5_TGS_NAME, realm, ((void*)0));
    if (kret) {
 *minor_status = kret;
 return GSS_S_FAILURE;
    }

    kret = krb5_cc_retrieve_cred(context, id, 0, &in_cred, &out_cred);
    krb5_free_principal(context, in_cred.server);
    if (kret) {
 *minor_status = 0;
 *lifetime = 0;
 return GSS_S_COMPLETE;
    }

    *lifetime = out_cred.times.endtime;
    krb5_free_cred_contents(context, &out_cred);

    return GSS_S_COMPLETE;
}
