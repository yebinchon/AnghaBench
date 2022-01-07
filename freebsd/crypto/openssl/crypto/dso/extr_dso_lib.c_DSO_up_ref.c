
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int references; } ;
typedef TYPE_1__ DSO ;


 scalar_t__ CRYPTO_UP_REF (int *,int*,int ) ;
 int DSO_F_DSO_UP_REF ;
 int DSOerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,int ) ;
 int r ;

int DSO_up_ref(DSO *dso)
{
    int i;

    if (dso == ((void*)0)) {
        DSOerr(DSO_F_DSO_UP_REF, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    if (CRYPTO_UP_REF(&dso->references, &i, dso->lock) <= 0)
        return 0;

    REF_PRINT_COUNT("DSO", r);
    REF_ASSERT_ISNT(i < 2);
    return ((i > 1) ? 1 : 0);
}
