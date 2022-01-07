
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int len; int ** val; } ;
struct TYPE_6__ {TYPE_1__ name_string; } ;
struct TYPE_7__ {int cusec; int ctime; TYPE_2__ cname; int * crealm; } ;
typedef int EVP_MD_CTX ;
typedef TYPE_3__ Authenticator ;


 int EVP_DigestFinal_ex (int *,void*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int *,int) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_md5 () ;
 int strlen (int *) ;

__attribute__((used)) static void
checksum_authenticator(Authenticator *auth, void *data)
{
    EVP_MD_CTX *m = EVP_MD_CTX_create();
    unsigned i;

    EVP_DigestInit_ex(m, EVP_md5(), ((void*)0));

    EVP_DigestUpdate(m, auth->crealm, strlen(auth->crealm));
    for(i = 0; i < auth->cname.name_string.len; i++)
 EVP_DigestUpdate(m, auth->cname.name_string.val[i],
     strlen(auth->cname.name_string.val[i]));
    EVP_DigestUpdate(m, &auth->ctime, sizeof(auth->ctime));
    EVP_DigestUpdate(m, &auth->cusec, sizeof(auth->cusec));

    EVP_DigestFinal_ex(m, data, ((void*)0));
    EVP_MD_CTX_destroy(m);
}
