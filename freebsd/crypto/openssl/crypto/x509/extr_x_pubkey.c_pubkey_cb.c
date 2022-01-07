
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pkey; } ;
typedef TYPE_1__ X509_PUBKEY ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_D2I_POST ;
 int ASN1_OP_FREE_POST ;
 int ERR_pop_to_mark () ;
 int ERR_set_mark () ;
 int EVP_PKEY_free (int *) ;
 int x509_pubkey_decode (int **,TYPE_1__*) ;

__attribute__((used)) static int pubkey_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                     void *exarg)
{
    if (operation == ASN1_OP_FREE_POST) {
        X509_PUBKEY *pubkey = (X509_PUBKEY *)*pval;
        EVP_PKEY_free(pubkey->pkey);
    } else if (operation == ASN1_OP_D2I_POST) {

        X509_PUBKEY *pubkey = (X509_PUBKEY *)*pval;
        EVP_PKEY_free(pubkey->pkey);
        pubkey->pkey = ((void*)0);





        ERR_set_mark();
        if (x509_pubkey_decode(&pubkey->pkey, pubkey) == -1)
            return 0;
        ERR_pop_to_mark();
    }
    return 1;
}
