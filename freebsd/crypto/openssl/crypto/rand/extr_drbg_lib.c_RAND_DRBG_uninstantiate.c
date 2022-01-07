
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; int type; TYPE_1__* meth; int state; } ;
struct TYPE_6__ {int (* uninstantiate ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RAND_DRBG ;


 int DRBG_ERROR ;
 int RAND_DRBG_set (TYPE_2__*,int ,int ) ;
 int RAND_F_RAND_DRBG_UNINSTANTIATE ;
 int RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED ;
 int RANDerr (int ,int ) ;
 int stub1 (TYPE_2__*) ;

int RAND_DRBG_uninstantiate(RAND_DRBG *drbg)
{
    if (drbg->meth == ((void*)0)) {
        drbg->state = DRBG_ERROR;
        RANDerr(RAND_F_RAND_DRBG_UNINSTANTIATE,
                RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED);
        return 0;
    }





    drbg->meth->uninstantiate(drbg);
    return RAND_DRBG_set(drbg, drbg->type, drbg->flags);
}
