
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mdpth; int pdpth; int * mtlsa; int * mcert; int * certs; int * trecs; } ;
typedef TYPE_1__ SSL_DANE ;


 int X509_free (int *) ;
 int sk_X509_pop_free (int *,int (*) (int *)) ;
 int sk_danetls_record_pop_free (int *,int ) ;
 int tlsa_free ;

__attribute__((used)) static void dane_final(SSL_DANE *dane)
{
    sk_danetls_record_pop_free(dane->trecs, tlsa_free);
    dane->trecs = ((void*)0);

    sk_X509_pop_free(dane->certs, X509_free);
    dane->certs = ((void*)0);

    X509_free(dane->mcert);
    dane->mcert = ((void*)0);
    dane->mtlsa = ((void*)0);
    dane->mdpth = -1;
    dane->pdpth = -1;
}
