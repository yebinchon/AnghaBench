
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kcm_creds {struct kcm_creds* next; int cred; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_3__ {struct kcm_creds* creds; } ;


 int free (struct kcm_creds*) ;
 int krb5_free_cred_contents (int ,int *) ;

krb5_error_code
kcm_ccache_remove_creds_internal(krb5_context context,
     kcm_ccache ccache)
{
    struct kcm_creds *k;

    k = ccache->creds;
    while (k != ((void*)0)) {
 struct kcm_creds *old;

 krb5_free_cred_contents(context, &k->cred);
 old = k;
 k = k->next;
 free(old);
    }
    ccache->creds = ((void*)0);

    return 0;
}
