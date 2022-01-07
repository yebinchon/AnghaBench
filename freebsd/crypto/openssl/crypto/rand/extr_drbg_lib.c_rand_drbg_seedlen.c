
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t strength; size_t min_entropylen; scalar_t__ min_noncelen; int * get_nonce; } ;
typedef TYPE_1__ RAND_DRBG ;



size_t rand_drbg_seedlen(RAND_DRBG *drbg)
{






    size_t min_entropy = drbg->strength;
    size_t min_entropylen = drbg->min_entropylen;





    if (drbg->min_noncelen > 0 && drbg->get_nonce == ((void*)0)) {
        min_entropy += drbg->strength / 2;
        min_entropylen += drbg->min_noncelen;
    }






    min_entropy >>= 3;


    return min_entropy > min_entropylen ? min_entropy : min_entropylen;
}
