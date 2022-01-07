
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; int cleanup_nonce; int get_nonce; int cleanup_entropy; int get_entropy; int * parent; } ;
typedef int RAND_DRBG_get_nonce_fn ;
typedef int RAND_DRBG_get_entropy_fn ;
typedef int RAND_DRBG_cleanup_nonce_fn ;
typedef int RAND_DRBG_cleanup_entropy_fn ;
typedef TYPE_1__ RAND_DRBG ;


 scalar_t__ DRBG_UNINITIALISED ;

int RAND_DRBG_set_callbacks(RAND_DRBG *drbg,
                            RAND_DRBG_get_entropy_fn get_entropy,
                            RAND_DRBG_cleanup_entropy_fn cleanup_entropy,
                            RAND_DRBG_get_nonce_fn get_nonce,
                            RAND_DRBG_cleanup_nonce_fn cleanup_nonce)
{
    if (drbg->state != DRBG_UNINITIALISED
            || drbg->parent != ((void*)0))
        return 0;
    drbg->get_entropy = get_entropy;
    drbg->cleanup_entropy = cleanup_entropy;
    drbg->get_nonce = get_nonce;
    drbg->cleanup_nonce = cleanup_nonce;
    return 1;
}
