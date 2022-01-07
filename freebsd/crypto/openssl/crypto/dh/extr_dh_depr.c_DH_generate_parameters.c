
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BN_GENCB ;


 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int BN_GENCB_set_old (int *,void (*) (int,int,void*),void*) ;
 int DH_free (int *) ;
 scalar_t__ DH_generate_parameters_ex (int *,int,int,int *) ;
 int * DH_new () ;

DH *DH_generate_parameters(int prime_len, int generator,
                           void (*callback) (int, int, void *), void *cb_arg)
{
    BN_GENCB *cb;
    DH *ret = ((void*)0);

    if ((ret = DH_new()) == ((void*)0))
        return ((void*)0);
    cb = BN_GENCB_new();
    if (cb == ((void*)0)) {
        DH_free(ret);
        return ((void*)0);
    }

    BN_GENCB_set_old(cb, callback, cb_arg);

    if (DH_generate_parameters_ex(ret, prime_len, generator, cb)) {
        BN_GENCB_free(cb);
        return ret;
    }
    BN_GENCB_free(cb);
    DH_free(ret);
    return ((void*)0);
}
