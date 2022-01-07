
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * admissionAuthority; } ;
typedef int GENERAL_NAME ;
typedef TYPE_1__ ADMISSION_SYNTAX ;


 int GENERAL_NAME_free (int *) ;

void ADMISSION_SYNTAX_set0_admissionAuthority(ADMISSION_SYNTAX *as,
                                              GENERAL_NAME *aa)
{
    GENERAL_NAME_free(as->admissionAuthority);
    as->admissionAuthority = aa;
}
