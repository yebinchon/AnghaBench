
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_ca_tbs ;
struct TYPE_5__ {int subject; int issuerUniqueID; int subjectUniqueID; int crldp; int serial; int eku; int san; int spki; } ;


 int der_free_bit_string (int *) ;
 int der_free_heim_integer (int *) ;
 int free (TYPE_1__*) ;
 int free_CRLDistributionPoints (int *) ;
 int free_ExtKeyUsage (int *) ;
 int free_GeneralNames (int *) ;
 int free_SubjectPublicKeyInfo (int *) ;
 int hx509_name_free (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void
hx509_ca_tbs_free(hx509_ca_tbs *tbs)
{
    if (tbs == ((void*)0) || *tbs == ((void*)0))
 return;

    free_SubjectPublicKeyInfo(&(*tbs)->spki);
    free_GeneralNames(&(*tbs)->san);
    free_ExtKeyUsage(&(*tbs)->eku);
    der_free_heim_integer(&(*tbs)->serial);
    free_CRLDistributionPoints(&(*tbs)->crldp);
    der_free_bit_string(&(*tbs)->subjectUniqueID);
    der_free_bit_string(&(*tbs)->issuerUniqueID);
    hx509_name_free(&(*tbs)->subject);

    memset(*tbs, 0, sizeof(**tbs));
    free(*tbs);
    *tbs = ((void*)0);
}
