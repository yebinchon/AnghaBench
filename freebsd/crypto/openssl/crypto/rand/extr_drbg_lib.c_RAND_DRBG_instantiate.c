
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t strength; size_t min_entropylen; size_t max_entropylen; size_t max_perslen; scalar_t__ state; size_t min_noncelen; size_t (* get_nonce ) (TYPE_2__*,unsigned char**,int,size_t,size_t) ;size_t max_noncelen; int reseed_next_counter; size_t (* get_entropy ) (TYPE_2__*,unsigned char**,size_t,size_t,size_t,int ) ;int reseed_gen_counter; int (* cleanup_nonce ) (TYPE_2__*,unsigned char*,size_t) ;int (* cleanup_entropy ) (TYPE_2__*,unsigned char*,size_t) ;int reseed_prop_counter; int reseed_time; TYPE_1__* meth; } ;
struct TYPE_9__ {int (* instantiate ) (TYPE_2__*,unsigned char*,size_t,unsigned char*,size_t,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ RAND_DRBG ;


 scalar_t__ DRBG_ERROR ;
 scalar_t__ DRBG_READY ;
 scalar_t__ DRBG_UNINITIALISED ;
 int RAND_F_RAND_DRBG_INSTANTIATE ;
 int RAND_R_ALREADY_INSTANTIATED ;
 int RAND_R_ERROR_INSTANTIATING_DRBG ;
 int RAND_R_ERROR_RETRIEVING_ENTROPY ;
 int RAND_R_ERROR_RETRIEVING_NONCE ;
 int RAND_R_IN_ERROR_STATE ;
 int RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED ;
 int RAND_R_PERSONALISATION_STRING_TOO_LONG ;
 int RANDerr (int ,int ) ;
 size_t stub1 (TYPE_2__*,unsigned char**,size_t,size_t,size_t,int ) ;
 size_t stub2 (TYPE_2__*,unsigned char**,int,size_t,size_t) ;
 int stub3 (TYPE_2__*,unsigned char*,size_t,unsigned char*,size_t,unsigned char const*,size_t) ;
 int stub4 (TYPE_2__*,unsigned char*,size_t) ;
 int stub5 (TYPE_2__*,unsigned char*,size_t) ;
 int time (int *) ;
 int tsan_load (int *) ;
 int tsan_store (int *,int) ;

int RAND_DRBG_instantiate(RAND_DRBG *drbg,
                          const unsigned char *pers, size_t perslen)
{
    unsigned char *nonce = ((void*)0), *entropy = ((void*)0);
    size_t noncelen = 0, entropylen = 0;
    size_t min_entropy = drbg->strength;
    size_t min_entropylen = drbg->min_entropylen;
    size_t max_entropylen = drbg->max_entropylen;

    if (perslen > drbg->max_perslen) {
        RANDerr(RAND_F_RAND_DRBG_INSTANTIATE,
                RAND_R_PERSONALISATION_STRING_TOO_LONG);
        goto end;
    }

    if (drbg->meth == ((void*)0)) {
        RANDerr(RAND_F_RAND_DRBG_INSTANTIATE,
                RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED);
        goto end;
    }

    if (drbg->state != DRBG_UNINITIALISED) {
        RANDerr(RAND_F_RAND_DRBG_INSTANTIATE,
                drbg->state == DRBG_ERROR ? RAND_R_IN_ERROR_STATE
                                          : RAND_R_ALREADY_INSTANTIATED);
        goto end;
    }

    drbg->state = DRBG_ERROR;







    if (drbg->min_noncelen > 0 && drbg->get_nonce == ((void*)0)) {
        min_entropy += drbg->strength / 2;
        min_entropylen += drbg->min_noncelen;
        max_entropylen += drbg->max_noncelen;
    }

    drbg->reseed_next_counter = tsan_load(&drbg->reseed_prop_counter);
    if (drbg->reseed_next_counter) {
        drbg->reseed_next_counter++;
        if(!drbg->reseed_next_counter)
            drbg->reseed_next_counter = 1;
    }

    if (drbg->get_entropy != ((void*)0))
        entropylen = drbg->get_entropy(drbg, &entropy, min_entropy,
                                       min_entropylen, max_entropylen, 0);
    if (entropylen < min_entropylen
            || entropylen > max_entropylen) {
        RANDerr(RAND_F_RAND_DRBG_INSTANTIATE, RAND_R_ERROR_RETRIEVING_ENTROPY);
        goto end;
    }

    if (drbg->min_noncelen > 0 && drbg->get_nonce != ((void*)0)) {
        noncelen = drbg->get_nonce(drbg, &nonce, drbg->strength / 2,
                                   drbg->min_noncelen, drbg->max_noncelen);
        if (noncelen < drbg->min_noncelen || noncelen > drbg->max_noncelen) {
            RANDerr(RAND_F_RAND_DRBG_INSTANTIATE, RAND_R_ERROR_RETRIEVING_NONCE);
            goto end;
        }
    }

    if (!drbg->meth->instantiate(drbg, entropy, entropylen,
                         nonce, noncelen, pers, perslen)) {
        RANDerr(RAND_F_RAND_DRBG_INSTANTIATE, RAND_R_ERROR_INSTANTIATING_DRBG);
        goto end;
    }

    drbg->state = DRBG_READY;
    drbg->reseed_gen_counter = 1;
    drbg->reseed_time = time(((void*)0));
    tsan_store(&drbg->reseed_prop_counter, drbg->reseed_next_counter);

 end:
    if (entropy != ((void*)0) && drbg->cleanup_entropy != ((void*)0))
        drbg->cleanup_entropy(drbg, entropy, entropylen);
    if (nonce != ((void*)0) && drbg->cleanup_nonce != ((void*)0))
        drbg->cleanup_nonce(drbg, nonce, noncelen);
    if (drbg->state == DRBG_READY)
        return 1;
    return 0;
}
