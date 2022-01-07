
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* seconds; } ;
typedef TYPE_1__ TS_ACCURACY ;
typedef int const ASN1_INTEGER ;


 int const* ASN1_INTEGER_dup (int const*) ;
 int ASN1_INTEGER_free (int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_ACCURACY_SET_SECONDS ;
 int TSerr (int ,int ) ;

int TS_ACCURACY_set_seconds(TS_ACCURACY *a, const ASN1_INTEGER *seconds)
{
    ASN1_INTEGER *new_seconds;

    if (a->seconds == seconds)
        return 1;
    new_seconds = ASN1_INTEGER_dup(seconds);
    if (new_seconds == ((void*)0)) {
        TSerr(TS_F_TS_ACCURACY_SET_SECONDS, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ASN1_INTEGER_free(a->seconds);
    a->seconds = new_seconds;
    return 1;
}
