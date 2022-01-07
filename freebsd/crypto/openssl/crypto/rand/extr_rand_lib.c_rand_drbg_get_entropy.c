
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int drbg ;
struct TYPE_18__ {scalar_t__ strength; TYPE_1__* seed_pool; TYPE_12__* parent; int reseed_next_counter; int secure; } ;
struct TYPE_17__ {int entropy_requested; } ;
struct TYPE_16__ {scalar_t__ strength; int reseed_prop_counter; } ;
typedef TYPE_1__ RAND_POOL ;
typedef TYPE_2__ RAND_DRBG ;


 scalar_t__ RAND_DRBG_generate (TYPE_12__*,unsigned char*,size_t,int,unsigned char*,int) ;
 int RAND_F_RAND_DRBG_GET_ENTROPY ;
 int RAND_R_PARENT_STRENGTH_TOO_WEAK ;
 int RAND_R_PREDICTION_RESISTANCE_NOT_SUPPORTED ;
 int RANDerr (int ,int ) ;
 int rand_drbg_lock (TYPE_12__*) ;
 int rand_drbg_unlock (TYPE_12__*) ;
 size_t rand_pool_acquire_entropy (TYPE_1__*) ;
 unsigned char* rand_pool_add_begin (TYPE_1__*,size_t) ;
 int rand_pool_add_end (TYPE_1__*,size_t,int) ;
 size_t rand_pool_bytes_needed (TYPE_1__*,int) ;
 unsigned char* rand_pool_detach (TYPE_1__*) ;
 size_t rand_pool_entropy_available (TYPE_1__*) ;
 int rand_pool_free (TYPE_1__*) ;
 size_t rand_pool_length (TYPE_1__*) ;
 TYPE_1__* rand_pool_new (int,int ,size_t,size_t) ;
 int tsan_load (int *) ;

size_t rand_drbg_get_entropy(RAND_DRBG *drbg,
                             unsigned char **pout,
                             int entropy, size_t min_len, size_t max_len,
                             int prediction_resistance)
{
    size_t ret = 0;
    size_t entropy_available = 0;
    RAND_POOL *pool;

    if (drbg->parent != ((void*)0) && drbg->strength > drbg->parent->strength) {




        RANDerr(RAND_F_RAND_DRBG_GET_ENTROPY, RAND_R_PARENT_STRENGTH_TOO_WEAK);
        return 0;
    }

    if (drbg->seed_pool != ((void*)0)) {
        pool = drbg->seed_pool;
        pool->entropy_requested = entropy;
    } else {
        pool = rand_pool_new(entropy, drbg->secure, min_len, max_len);
        if (pool == ((void*)0))
            return 0;
    }

    if (drbg->parent != ((void*)0)) {
        size_t bytes_needed = rand_pool_bytes_needed(pool, 1 );
        unsigned char *buffer = rand_pool_add_begin(pool, bytes_needed);

        if (buffer != ((void*)0)) {
            size_t bytes = 0;
            rand_drbg_lock(drbg->parent);
            if (RAND_DRBG_generate(drbg->parent,
                                   buffer, bytes_needed,
                                   prediction_resistance,
                                   (unsigned char *)&drbg, sizeof(drbg)) != 0)
                bytes = bytes_needed;
            drbg->reseed_next_counter
                = tsan_load(&drbg->parent->reseed_prop_counter);
            rand_drbg_unlock(drbg->parent);

            rand_pool_add_end(pool, bytes, 8 * bytes);
            entropy_available = rand_pool_entropy_available(pool);
        }

    } else {
        if (prediction_resistance) {





            RANDerr(RAND_F_RAND_DRBG_GET_ENTROPY,
                    RAND_R_PREDICTION_RESISTANCE_NOT_SUPPORTED);
            goto err;
        }


        entropy_available = rand_pool_acquire_entropy(pool);
    }

    if (entropy_available > 0) {
        ret = rand_pool_length(pool);
        *pout = rand_pool_detach(pool);
    }

 err:
    if (drbg->seed_pool == ((void*)0))
        rand_pool_free(pool);
    return ret;
}
