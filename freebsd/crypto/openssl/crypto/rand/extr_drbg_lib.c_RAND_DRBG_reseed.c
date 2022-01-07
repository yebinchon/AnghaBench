
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; size_t max_adinlen; int reseed_next_counter; size_t (* get_entropy ) (TYPE_2__*,unsigned char**,int ,size_t,size_t,int) ;size_t min_entropylen; size_t max_entropylen; int reseed_gen_counter; int (* cleanup_entropy ) (TYPE_2__*,unsigned char*,size_t) ;int reseed_prop_counter; int reseed_time; TYPE_1__* meth; int strength; } ;
struct TYPE_7__ {int (* reseed ) (TYPE_2__*,unsigned char*,size_t,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ RAND_DRBG ;


 scalar_t__ DRBG_ERROR ;
 scalar_t__ DRBG_READY ;
 scalar_t__ DRBG_UNINITIALISED ;
 int RAND_F_RAND_DRBG_RESEED ;
 int RAND_R_ADDITIONAL_INPUT_TOO_LONG ;
 int RAND_R_ERROR_RETRIEVING_ENTROPY ;
 int RAND_R_IN_ERROR_STATE ;
 int RAND_R_NOT_INSTANTIATED ;
 int RANDerr (int ,int ) ;
 size_t stub1 (TYPE_2__*,unsigned char**,int ,size_t,size_t,int) ;
 int stub2 (TYPE_2__*,unsigned char*,size_t,unsigned char const*,size_t) ;
 int stub3 (TYPE_2__*,unsigned char*,size_t) ;
 int time (int *) ;
 int tsan_load (int *) ;
 int tsan_store (int *,int) ;

int RAND_DRBG_reseed(RAND_DRBG *drbg,
                     const unsigned char *adin, size_t adinlen,
                     int prediction_resistance)
{
    unsigned char *entropy = ((void*)0);
    size_t entropylen = 0;

    if (drbg->state == DRBG_ERROR) {
        RANDerr(RAND_F_RAND_DRBG_RESEED, RAND_R_IN_ERROR_STATE);
        return 0;
    }
    if (drbg->state == DRBG_UNINITIALISED) {
        RANDerr(RAND_F_RAND_DRBG_RESEED, RAND_R_NOT_INSTANTIATED);
        return 0;
    }

    if (adin == ((void*)0)) {
        adinlen = 0;
    } else if (adinlen > drbg->max_adinlen) {
        RANDerr(RAND_F_RAND_DRBG_RESEED, RAND_R_ADDITIONAL_INPUT_TOO_LONG);
        return 0;
    }

    drbg->state = DRBG_ERROR;

    drbg->reseed_next_counter = tsan_load(&drbg->reseed_prop_counter);
    if (drbg->reseed_next_counter) {
        drbg->reseed_next_counter++;
        if(!drbg->reseed_next_counter)
            drbg->reseed_next_counter = 1;
    }

    if (drbg->get_entropy != ((void*)0))
        entropylen = drbg->get_entropy(drbg, &entropy, drbg->strength,
                                       drbg->min_entropylen,
                                       drbg->max_entropylen,
                                       prediction_resistance);
    if (entropylen < drbg->min_entropylen
            || entropylen > drbg->max_entropylen) {
        RANDerr(RAND_F_RAND_DRBG_RESEED, RAND_R_ERROR_RETRIEVING_ENTROPY);
        goto end;
    }

    if (!drbg->meth->reseed(drbg, entropy, entropylen, adin, adinlen))
        goto end;

    drbg->state = DRBG_READY;
    drbg->reseed_gen_counter = 1;
    drbg->reseed_time = time(((void*)0));
    tsan_store(&drbg->reseed_prop_counter, drbg->reseed_next_counter);

 end:
    if (entropy != ((void*)0) && drbg->cleanup_entropy != ((void*)0))
        drbg->cleanup_entropy(drbg, entropy, entropylen);
    if (drbg->state == DRBG_READY)
        return 1;
    return 0;
}
