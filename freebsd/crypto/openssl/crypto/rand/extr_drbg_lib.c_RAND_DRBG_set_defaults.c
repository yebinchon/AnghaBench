
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_F_RAND_DRBG_SET_DEFAULTS ;
 int RAND_R_UNSUPPORTED_DRBG_FLAGS ;
 int RAND_R_UNSUPPORTED_DRBG_TYPE ;
 int RANDerr (int ,int ) ;
 unsigned int rand_drbg_flags ;
 int rand_drbg_type ;
 unsigned int rand_drbg_used_flags ;

int RAND_DRBG_set_defaults(int type, unsigned int flags)
{
    int ret = 1;

    switch (type) {
    default:
        RANDerr(RAND_F_RAND_DRBG_SET_DEFAULTS, RAND_R_UNSUPPORTED_DRBG_TYPE);
        return 0;
    case 130:
    case 129:
    case 128:
        break;
    }

    if ((flags & ~rand_drbg_used_flags) != 0) {
        RANDerr(RAND_F_RAND_DRBG_SET_DEFAULTS, RAND_R_UNSUPPORTED_DRBG_FLAGS);
        return 0;
    }

    rand_drbg_type = type;
    rand_drbg_flags = flags;

    return ret;
}
