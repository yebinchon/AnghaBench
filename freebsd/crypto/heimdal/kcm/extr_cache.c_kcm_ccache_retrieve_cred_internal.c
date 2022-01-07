
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kcm_creds {int cred; struct kcm_creds* next; } ;
typedef int krb5_flags ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_3__ {struct kcm_creds* creds; } ;


 scalar_t__ FALSE ;
 scalar_t__ KRB5_CC_END ;
 scalar_t__ krb5_compare_creds (int ,int ,int const*,int *) ;
 int memset (int **,int ,int) ;

krb5_error_code
kcm_ccache_retrieve_cred_internal(krb5_context context,
       kcm_ccache ccache,
       krb5_flags whichfields,
       const krb5_creds *mcreds,
       krb5_creds **creds)
{
    krb5_boolean match;
    struct kcm_creds *c;
    krb5_error_code ret;

    memset(creds, 0, sizeof(*creds));

    ret = KRB5_CC_END;

    match = FALSE;
    for (c = ccache->creds; c != ((void*)0); c = c->next) {
 match = krb5_compare_creds(context, whichfields, mcreds, &c->cred);
 if (match)
     break;
    }

    if (match) {
 ret = 0;
 *creds = &c->cred;
    }

    return ret;
}
