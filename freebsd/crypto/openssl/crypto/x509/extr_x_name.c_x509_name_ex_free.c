
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* canon_enc; int entries; int bytes; } ;
typedef TYPE_1__ X509_NAME ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int BUF_MEM_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int X509_NAME_ENTRY_free ;
 int sk_X509_NAME_ENTRY_pop_free (int ,int ) ;

__attribute__((used)) static void x509_name_ex_free(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    X509_NAME *a;

    if (!pval || !*pval)
        return;
    a = (X509_NAME *)*pval;

    BUF_MEM_free(a->bytes);
    sk_X509_NAME_ENTRY_pop_free(a->entries, X509_NAME_ENTRY_free);
    OPENSSL_free(a->canon_enc);
    OPENSSL_free(a);
    *pval = ((void*)0);
}
