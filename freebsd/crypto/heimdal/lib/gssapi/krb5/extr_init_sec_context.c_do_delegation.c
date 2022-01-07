
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
struct TYPE_15__ {scalar_t__ endtime; } ;
struct TYPE_18__ {int forwarded; int forwardable; TYPE_8__* server; TYPE_8__* client; TYPE_1__ times; } ;
typedef TYPE_4__ krb5_creds ;
typedef int krb5_context ;
typedef TYPE_5__* krb5_const_principal ;
typedef int krb5_ccache ;
typedef int krb5_auth_context ;
typedef int fwd_flags ;
typedef int creds ;
struct TYPE_20__ {int realm; } ;
struct TYPE_16__ {int len; int * val; } ;
struct TYPE_17__ {TYPE_2__ name_string; } ;
struct TYPE_19__ {TYPE_3__ name; } ;
typedef TYPE_4__ KDCOptions ;


 int KDCOptions2int (TYPE_4__) ;
 int KRB5_TGS_NAME ;
 scalar_t__ krb5_cc_get_principal (int ,int ,TYPE_8__**) ;
 int krb5_data_zero (int *) ;
 int krb5_free_principal (int ,TYPE_8__*) ;
 scalar_t__ krb5_get_forwarded_creds (int ,int ,int ,int ,int ,TYPE_4__*,int *) ;
 scalar_t__ krb5_make_principal (int ,TYPE_8__**,int ,int ,int ,int *) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void
do_delegation (krb5_context context,
        krb5_auth_context ac,
        krb5_ccache ccache,
        krb5_creds *cred,
        krb5_const_principal name,
        krb5_data *fwd_data,
        uint32_t flagmask,
        uint32_t *flags)
{
    krb5_creds creds;
    KDCOptions fwd_flags;
    krb5_error_code kret;

    memset (&creds, 0, sizeof(creds));
    krb5_data_zero (fwd_data);

    kret = krb5_cc_get_principal(context, ccache, &creds.client);
    if (kret)
 goto out;

    kret = krb5_make_principal(context,
          &creds.server,
          creds.client->realm,
          KRB5_TGS_NAME,
          creds.client->realm,
          ((void*)0));
    if (kret)
 goto out;

    creds.times.endtime = 0;

    memset(&fwd_flags, 0, sizeof(fwd_flags));
    fwd_flags.forwarded = 1;
    fwd_flags.forwardable = 1;

    if (
 name->name.name_string.len < 2)
 goto out;

    kret = krb5_get_forwarded_creds(context,
        ac,
        ccache,
        KDCOptions2int(fwd_flags),
        name->name.name_string.val[1],
        &creds,
        fwd_data);

 out:
    if (kret)
 *flags &= ~flagmask;
    else
 *flags |= flagmask;

    if (creds.client)
 krb5_free_principal(context, creds.client);
    if (creds.server)
 krb5_free_principal(context, creds.server);
}
