
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_3__ {int * hash_algo; } ;
typedef TYPE_1__ TS_MSG_IMPRINT ;


 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_MSG_IMPRINT_SET_ALGO ;
 int TSerr (int ,int ) ;
 int * X509_ALGOR_dup (int *) ;
 int X509_ALGOR_free (int *) ;

int TS_MSG_IMPRINT_set_algo(TS_MSG_IMPRINT *a, X509_ALGOR *alg)
{
    X509_ALGOR *new_alg;

    if (a->hash_algo == alg)
        return 1;
    new_alg = X509_ALGOR_dup(alg);
    if (new_alg == ((void*)0)) {
        TSerr(TS_F_TS_MSG_IMPRINT_SET_ALGO, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    X509_ALGOR_free(a->hash_algo);
    a->hash_algo = new_alg;
    return 1;
}
