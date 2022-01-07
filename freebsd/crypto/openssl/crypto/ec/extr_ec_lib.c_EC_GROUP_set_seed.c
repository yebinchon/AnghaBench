
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t seed_len; int * seed; } ;
typedef TYPE_1__ EC_GROUP ;


 int EC_F_EC_GROUP_SET_SEED ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (size_t) ;
 int memcpy (int *,unsigned char const*,size_t) ;

size_t EC_GROUP_set_seed(EC_GROUP *group, const unsigned char *p, size_t len)
{
    OPENSSL_free(group->seed);
    group->seed = ((void*)0);
    group->seed_len = 0;

    if (!len || !p)
        return 1;

    if ((group->seed = OPENSSL_malloc(len)) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_SET_SEED, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    memcpy(group->seed, p, len);
    group->seed_len = len;

    return len;
}
