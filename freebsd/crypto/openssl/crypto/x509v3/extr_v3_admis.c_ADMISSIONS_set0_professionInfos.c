
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * professionInfos; } ;
typedef int PROFESSION_INFOS ;
typedef TYPE_1__ ADMISSIONS ;


 int PROFESSION_INFO_free ;
 int sk_PROFESSION_INFO_pop_free (int *,int ) ;

void ADMISSIONS_set0_professionInfos(ADMISSIONS *a, PROFESSION_INFOS *pi)
{
    sk_PROFESSION_INFO_pop_free(a->professionInfos, PROFESSION_INFO_free);
    a->professionInfos = pi;
}
