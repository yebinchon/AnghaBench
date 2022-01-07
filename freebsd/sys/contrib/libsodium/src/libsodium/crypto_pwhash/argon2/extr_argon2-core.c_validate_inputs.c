
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ outlen; scalar_t__ pwdlen; scalar_t__ saltlen; scalar_t__ secretlen; scalar_t__ adlen; int m_cost; int lanes; scalar_t__ t_cost; scalar_t__ threads; int * ad; int * secret; int * salt; int * pwd; int * out; } ;
typedef TYPE_1__ argon2_context ;


 int ARGON2_AD_PTR_MISMATCH ;
 int ARGON2_AD_TOO_LONG ;
 int ARGON2_AD_TOO_SHORT ;
 int ARGON2_INCORRECT_PARAMETER ;
 int ARGON2_LANES_TOO_FEW ;
 int ARGON2_LANES_TOO_MANY ;
 scalar_t__ ARGON2_MAX_AD_LENGTH ;
 int ARGON2_MAX_LANES ;
 int ARGON2_MAX_MEMORY ;
 scalar_t__ ARGON2_MAX_OUTLEN ;
 scalar_t__ ARGON2_MAX_PWD_LENGTH ;
 scalar_t__ ARGON2_MAX_SALT_LENGTH ;
 scalar_t__ ARGON2_MAX_SECRET ;
 scalar_t__ ARGON2_MAX_THREADS ;
 scalar_t__ ARGON2_MAX_TIME ;
 int ARGON2_MEMORY_TOO_LITTLE ;
 int ARGON2_MEMORY_TOO_MUCH ;
 scalar_t__ ARGON2_MIN_AD_LENGTH ;
 int ARGON2_MIN_LANES ;
 int ARGON2_MIN_MEMORY ;
 scalar_t__ ARGON2_MIN_OUTLEN ;
 scalar_t__ ARGON2_MIN_PWD_LENGTH ;
 scalar_t__ ARGON2_MIN_SALT_LENGTH ;
 scalar_t__ ARGON2_MIN_SECRET ;
 scalar_t__ ARGON2_MIN_THREADS ;
 scalar_t__ ARGON2_MIN_TIME ;
 int ARGON2_OK ;
 int ARGON2_OUTPUT_PTR_NULL ;
 int ARGON2_OUTPUT_TOO_LONG ;
 int ARGON2_OUTPUT_TOO_SHORT ;
 int ARGON2_PWD_PTR_MISMATCH ;
 int ARGON2_PWD_TOO_LONG ;
 int ARGON2_PWD_TOO_SHORT ;
 int ARGON2_SALT_PTR_MISMATCH ;
 int ARGON2_SALT_TOO_LONG ;
 int ARGON2_SALT_TOO_SHORT ;
 int ARGON2_SECRET_PTR_MISMATCH ;
 int ARGON2_SECRET_TOO_LONG ;
 int ARGON2_SECRET_TOO_SHORT ;
 int ARGON2_THREADS_TOO_FEW ;
 int ARGON2_THREADS_TOO_MANY ;
 int ARGON2_TIME_TOO_LARGE ;
 int ARGON2_TIME_TOO_SMALL ;

int
validate_inputs(const argon2_context *context)
{

    if (((void*)0) == context) {
        return ARGON2_INCORRECT_PARAMETER;
    }

    if (((void*)0) == context->out) {
        return ARGON2_OUTPUT_PTR_NULL;
    }


    if (ARGON2_MIN_OUTLEN > context->outlen) {
        return ARGON2_OUTPUT_TOO_SHORT;
    }

    if (ARGON2_MAX_OUTLEN < context->outlen) {
        return ARGON2_OUTPUT_TOO_LONG;
    }


    if (((void*)0) == context->pwd) {
        if (0 != context->pwdlen) {
            return ARGON2_PWD_PTR_MISMATCH;
        }
    }

    if (ARGON2_MIN_PWD_LENGTH > context->pwdlen) {
        return ARGON2_PWD_TOO_SHORT;
    }

    if (ARGON2_MAX_PWD_LENGTH < context->pwdlen) {
        return ARGON2_PWD_TOO_LONG;
    }


    if (((void*)0) == context->salt) {
        if (0 != context->saltlen) {
            return ARGON2_SALT_PTR_MISMATCH;
        }
    }

    if (ARGON2_MIN_SALT_LENGTH > context->saltlen) {
        return ARGON2_SALT_TOO_SHORT;
    }

    if (ARGON2_MAX_SALT_LENGTH < context->saltlen) {
        return ARGON2_SALT_TOO_LONG;
    }


    if (((void*)0) == context->secret) {
        if (0 != context->secretlen) {
            return ARGON2_SECRET_PTR_MISMATCH;
        }
    } else {
        if (ARGON2_MIN_SECRET > context->secretlen) {
            return ARGON2_SECRET_TOO_SHORT;
        }

        if (ARGON2_MAX_SECRET < context->secretlen) {
            return ARGON2_SECRET_TOO_LONG;
        }
    }


    if (((void*)0) == context->ad) {
        if (0 != context->adlen) {
            return ARGON2_AD_PTR_MISMATCH;
        }
    } else {
        if (ARGON2_MIN_AD_LENGTH > context->adlen) {
            return ARGON2_AD_TOO_SHORT;
        }

        if (ARGON2_MAX_AD_LENGTH < context->adlen) {
            return ARGON2_AD_TOO_LONG;
        }
    }


    if (ARGON2_MIN_MEMORY > context->m_cost) {
        return ARGON2_MEMORY_TOO_LITTLE;
    }

    if (ARGON2_MAX_MEMORY < context->m_cost) {
        return ARGON2_MEMORY_TOO_MUCH;
    }

    if (context->m_cost < 8 * context->lanes) {
        return ARGON2_MEMORY_TOO_LITTLE;
    }


    if (ARGON2_MIN_TIME > context->t_cost) {
        return ARGON2_TIME_TOO_SMALL;
    }

    if (ARGON2_MAX_TIME < context->t_cost) {
        return ARGON2_TIME_TOO_LARGE;
    }


    if (ARGON2_MIN_LANES > context->lanes) {
        return ARGON2_LANES_TOO_FEW;
    }

    if (ARGON2_MAX_LANES < context->lanes) {
        return ARGON2_LANES_TOO_MANY;
    }


    if (ARGON2_MIN_THREADS > context->threads) {
        return ARGON2_THREADS_TOO_FEW;
    }

    if (ARGON2_MAX_THREADS < context->threads) {
        return ARGON2_THREADS_TOO_MANY;
    }


    return ARGON2_OK;
}
