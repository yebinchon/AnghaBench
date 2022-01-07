
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* time; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int const ASN1_GENERALIZEDTIME ;


 int ASN1_GENERALIZEDTIME_free (int const*) ;
 int const* ASN1_STRING_dup (int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_TST_INFO_SET_TIME ;
 int TSerr (int ,int ) ;

int TS_TST_INFO_set_time(TS_TST_INFO *a, const ASN1_GENERALIZEDTIME *gtime)
{
    ASN1_GENERALIZEDTIME *new_time;

    if (a->time == gtime)
        return 1;
    new_time = ASN1_STRING_dup(gtime);
    if (new_time == ((void*)0)) {
        TSerr(TS_F_TS_TST_INFO_SET_TIME, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ASN1_GENERALIZEDTIME_free(a->time);
    a->time = new_time;
    return 1;
}
