
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * namingAuthority; } ;
typedef int NAMING_AUTHORITY ;
typedef TYPE_1__ ADMISSIONS ;


 int NAMING_AUTHORITY_free (int *) ;

void ADMISSIONS_set0_namingAuthority(ADMISSIONS *a, NAMING_AUTHORITY *na)
{
    NAMING_AUTHORITY_free(a->namingAuthority);
    a->namingAuthority = na;
}
