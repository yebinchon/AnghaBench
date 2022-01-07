
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
typedef TYPE_1__* kcm_ccache ;
struct TYPE_3__ {struct kcm_creds* creds; } ;


 scalar_t__ KRB5_CC_NOTFOUND ;
 int free (struct kcm_creds*) ;
 scalar_t__ krb5_compare_creds (int ,int ,int const*,int *) ;
 int krb5_free_cred_contents (int ,int *) ;

krb5_error_code
kcm_ccache_remove_cred_internal(krb5_context context,
    kcm_ccache ccache,
    krb5_flags whichfields,
    const krb5_creds *mcreds)
{
    krb5_error_code ret;
    struct kcm_creds **c;

    ret = KRB5_CC_NOTFOUND;

    for (c = &ccache->creds; *c != ((void*)0); c = &(*c)->next) {
 if (krb5_compare_creds(context, whichfields, mcreds, &(*c)->cred)) {
     struct kcm_creds *cred = *c;

     *c = cred->next;
     krb5_free_cred_contents(context, &cred->cred);
     free(cred);
     ret = 0;
     if (*c == ((void*)0))
  break;
 }
    }

    return ret;
}
