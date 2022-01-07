
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * admissionAuthority; } ;
typedef int GENERAL_NAME ;
typedef TYPE_1__ ADMISSIONS ;


 int GENERAL_NAME_free (int *) ;

void ADMISSIONS_set0_admissionAuthority(ADMISSIONS *a, GENERAL_NAME *aa)
{
    GENERAL_NAME_free(a->admissionAuthority);
    a->admissionAuthority = aa;
}
