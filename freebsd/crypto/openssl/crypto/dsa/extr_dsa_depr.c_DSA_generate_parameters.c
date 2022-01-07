
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSA ;
typedef int BN_GENCB ;


 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int BN_GENCB_set_old (int *,void (*) (int,int,void*),void*) ;
 int DSA_free (int *) ;
 scalar_t__ DSA_generate_parameters_ex (int *,int,unsigned char*,int,int*,unsigned long*,int *) ;
 int * DSA_new () ;

DSA *DSA_generate_parameters(int bits,
                             unsigned char *seed_in, int seed_len,
                             int *counter_ret, unsigned long *h_ret,
                             void (*callback) (int, int, void *),
                             void *cb_arg)
{
    BN_GENCB *cb;
    DSA *ret;

    if ((ret = DSA_new()) == ((void*)0))
        return ((void*)0);
    cb = BN_GENCB_new();
    if (cb == ((void*)0))
        goto err;

    BN_GENCB_set_old(cb, callback, cb_arg);

    if (DSA_generate_parameters_ex(ret, bits, seed_in, seed_len,
                                   counter_ret, h_ret, cb)) {
        BN_GENCB_free(cb);
        return ret;
    }
    BN_GENCB_free(cb);
err:
    DSA_free(ret);
    return ((void*)0);
}
