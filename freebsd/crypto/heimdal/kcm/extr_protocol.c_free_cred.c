
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_ntlm_cred {int nthash; struct kcm_ntlm_cred* domain; struct kcm_ntlm_cred* user; } ;


 int free (struct kcm_ntlm_cred*) ;
 int krb5_data_free (int *) ;

__attribute__((used)) static void
free_cred(struct kcm_ntlm_cred *cred)
{
    free(cred->user);
    free(cred->domain);
    krb5_data_free(&cred->nthash);
    free(cred);
}
