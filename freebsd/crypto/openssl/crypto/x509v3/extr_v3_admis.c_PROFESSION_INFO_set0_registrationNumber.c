
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * registrationNumber; } ;
typedef TYPE_1__ PROFESSION_INFO ;
typedef int ASN1_PRINTABLESTRING ;


 int ASN1_PRINTABLESTRING_free (int *) ;

void PROFESSION_INFO_set0_registrationNumber(PROFESSION_INFO *pi,
                                             ASN1_PRINTABLESTRING *rn)
{
    ASN1_PRINTABLESTRING_free(pi->registrationNumber);
    pi->registrationNumber = rn;
}
