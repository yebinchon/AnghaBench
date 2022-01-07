
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kcm_creds {int cred; int uuid; struct kcm_creds* next; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_3__ {struct kcm_creds* creds; } ;


 scalar_t__ KRB5_CC_NOMEM ;
 int RAND_bytes (int ,int) ;
 scalar_t__ calloc (int,int) ;
 int free (struct kcm_creds*) ;
 scalar_t__ krb5_copy_creds_contents (int ,int *,int *) ;

krb5_error_code
kcm_ccache_store_cred_internal(krb5_context context,
          kcm_ccache ccache,
          krb5_creds *creds,
          int copy,
          krb5_creds **credp)
{
    struct kcm_creds **c;
    krb5_error_code ret;

    for (c = &ccache->creds; *c != ((void*)0); c = &(*c)->next)
 ;

    *c = (struct kcm_creds *)calloc(1, sizeof(**c));
    if (*c == ((void*)0))
 return KRB5_CC_NOMEM;

    RAND_bytes((*c)->uuid, sizeof((*c)->uuid));

    *credp = &(*c)->cred;

    if (copy) {
 ret = krb5_copy_creds_contents(context, creds, *credp);
 if (ret) {
     free(*c);
     *c = ((void*)0);
 }
    } else {
 **credp = *creds;
 ret = 0;
    }

    return ret;
}
