
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_10__ {scalar_t__ state; size_t max_request; size_t max_adinlen; int fork_id; scalar_t__ reseed_interval; scalar_t__ reseed_gen_counter; scalar_t__ reseed_time_interval; scalar_t__ reseed_time; TYPE_2__* meth; TYPE_1__* parent; int reseed_prop_counter; } ;
struct TYPE_9__ {int (* generate ) (TYPE_3__*,unsigned char*,size_t,unsigned char const*,size_t) ;} ;
struct TYPE_8__ {int reseed_prop_counter; } ;
typedef TYPE_3__ RAND_DRBG ;


 scalar_t__ DRBG_ERROR ;
 scalar_t__ DRBG_READY ;
 scalar_t__ DRBG_UNINITIALISED ;
 int RAND_DRBG_reseed (TYPE_3__*,unsigned char const*,size_t,int) ;
 int RAND_F_RAND_DRBG_GENERATE ;
 int RAND_R_ADDITIONAL_INPUT_TOO_LONG ;
 int RAND_R_GENERATE_ERROR ;
 int RAND_R_IN_ERROR_STATE ;
 int RAND_R_NOT_INSTANTIATED ;
 int RAND_R_REQUEST_TOO_LARGE_FOR_DRBG ;
 int RAND_R_RESEED_ERROR ;
 int RANDerr (int ,int ) ;
 int openssl_get_fork_id () ;
 int rand_drbg_restart (TYPE_3__*,int *,int ,int ) ;
 int stub1 (TYPE_3__*,unsigned char*,size_t,unsigned char const*,size_t) ;
 scalar_t__ time (int *) ;
 unsigned int tsan_load (int *) ;

int RAND_DRBG_generate(RAND_DRBG *drbg, unsigned char *out, size_t outlen,
                       int prediction_resistance,
                       const unsigned char *adin, size_t adinlen)
{
    int fork_id;
    int reseed_required = 0;

    if (drbg->state != DRBG_READY) {

        rand_drbg_restart(drbg, ((void*)0), 0, 0);

        if (drbg->state == DRBG_ERROR) {
            RANDerr(RAND_F_RAND_DRBG_GENERATE, RAND_R_IN_ERROR_STATE);
            return 0;
        }
        if (drbg->state == DRBG_UNINITIALISED) {
            RANDerr(RAND_F_RAND_DRBG_GENERATE, RAND_R_NOT_INSTANTIATED);
            return 0;
        }
    }

    if (outlen > drbg->max_request) {
        RANDerr(RAND_F_RAND_DRBG_GENERATE, RAND_R_REQUEST_TOO_LARGE_FOR_DRBG);
        return 0;
    }
    if (adinlen > drbg->max_adinlen) {
        RANDerr(RAND_F_RAND_DRBG_GENERATE, RAND_R_ADDITIONAL_INPUT_TOO_LONG);
        return 0;
    }

    fork_id = openssl_get_fork_id();

    if (drbg->fork_id != fork_id) {
        drbg->fork_id = fork_id;
        reseed_required = 1;
    }

    if (drbg->reseed_interval > 0) {
        if (drbg->reseed_gen_counter >= drbg->reseed_interval)
            reseed_required = 1;
    }
    if (drbg->reseed_time_interval > 0) {
        time_t now = time(((void*)0));
        if (now < drbg->reseed_time
            || now - drbg->reseed_time >= drbg->reseed_time_interval)
            reseed_required = 1;
    }
    if (drbg->parent != ((void*)0)) {
        unsigned int reseed_counter = tsan_load(&drbg->reseed_prop_counter);
        if (reseed_counter > 0
                && tsan_load(&drbg->parent->reseed_prop_counter)
                   != reseed_counter)
            reseed_required = 1;
    }

    if (reseed_required || prediction_resistance) {
        if (!RAND_DRBG_reseed(drbg, adin, adinlen, prediction_resistance)) {
            RANDerr(RAND_F_RAND_DRBG_GENERATE, RAND_R_RESEED_ERROR);
            return 0;
        }
        adin = ((void*)0);
        adinlen = 0;
    }

    if (!drbg->meth->generate(drbg, out, outlen, adin, adinlen)) {
        drbg->state = DRBG_ERROR;
        RANDerr(RAND_F_RAND_DRBG_GENERATE, RAND_R_GENERATE_ERROR);
        return 0;
    }

    drbg->reseed_gen_counter++;

    return 1;
}
