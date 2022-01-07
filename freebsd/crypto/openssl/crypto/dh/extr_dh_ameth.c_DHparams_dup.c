
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;


 int DH_free (int *) ;
 int * DH_new () ;
 int int_dh_param_copy (int *,int *,int) ;

DH *DHparams_dup(DH *dh)
{
    DH *ret;
    ret = DH_new();
    if (ret == ((void*)0))
        return ((void*)0);
    if (!int_dh_param_copy(ret, dh, -1)) {
        DH_free(ret);
        return ((void*)0);
    }
    return ret;
}
