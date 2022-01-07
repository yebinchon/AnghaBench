
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;


 int DH_F_DH_NEW_BY_NID ;
 int DH_R_INVALID_PARAMETER_NID ;
 int DHerr (int ,int ) ;





 int _bignum_ffdhe2048_p ;
 int _bignum_ffdhe3072_p ;
 int _bignum_ffdhe4096_p ;
 int _bignum_ffdhe6144_p ;
 int _bignum_ffdhe8192_p ;
 int * dh_param_init (int *,int) ;

DH *DH_new_by_nid(int nid)
{
    switch (nid) {
    case 132:
        return dh_param_init(&_bignum_ffdhe2048_p, 225);
    case 131:
        return dh_param_init(&_bignum_ffdhe3072_p, 275);
    case 130:
        return dh_param_init(&_bignum_ffdhe4096_p, 325);
    case 129:
        return dh_param_init(&_bignum_ffdhe6144_p, 375);
    case 128:
        return dh_param_init(&_bignum_ffdhe8192_p, 400);
    default:
        DHerr(DH_F_DH_NEW_BY_NID, DH_R_INVALID_PARAMETER_NID);
        return ((void*)0);
    }
}
