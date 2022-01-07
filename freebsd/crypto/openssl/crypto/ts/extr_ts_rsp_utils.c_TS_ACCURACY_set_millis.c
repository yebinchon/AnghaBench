
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* millis; } ;
typedef TYPE_1__ TS_ACCURACY ;
typedef int const ASN1_INTEGER ;


 int const* ASN1_INTEGER_dup (int const*) ;
 int ASN1_INTEGER_free (int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_ACCURACY_SET_MILLIS ;
 int TSerr (int ,int ) ;

int TS_ACCURACY_set_millis(TS_ACCURACY *a, const ASN1_INTEGER *millis)
{
    ASN1_INTEGER *new_millis = ((void*)0);

    if (a->millis == millis)
        return 1;
    if (millis != ((void*)0)) {
        new_millis = ASN1_INTEGER_dup(millis);
        if (new_millis == ((void*)0)) {
            TSerr(TS_F_TS_ACCURACY_SET_MILLIS, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
    ASN1_INTEGER_free(a->millis);
    a->millis = new_millis;
    return 1;
}
