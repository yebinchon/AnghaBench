#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  argon2_type ;
struct TYPE_4__ {char* out; char* pwd; char* salt; void* t_cost; void* m_cost; void* lanes; void* threads; int /*<<< orphan*/  flags; scalar_t__ adlen; int /*<<< orphan*/ * ad; scalar_t__ secretlen; int /*<<< orphan*/ * secret; void* saltlen; void* pwdlen; void* outlen; } ;
typedef  TYPE_1__ argon2_context ;

/* Variables and functions */
 int /*<<< orphan*/  ARGON2_DEFAULT_FLAGS ; 
 int ARGON2_ENCODING_FAIL ; 
 size_t const ARGON2_MAX_OUTLEN ; 
 size_t const ARGON2_MAX_PWD_LENGTH ; 
 size_t const ARGON2_MAX_SALT_LENGTH ; 
 int ARGON2_MEMORY_ALLOCATION_ERROR ; 
 int ARGON2_OK ; 
 int ARGON2_OUTPUT_TOO_LONG ; 
 int ARGON2_PWD_TOO_LONG ; 
 int ARGON2_SALT_TOO_LONG ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t const,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t const) ; 

int
FUNC6(const uint32_t t_cost, const uint32_t m_cost,
            const uint32_t parallelism, const void *pwd, const size_t pwdlen,
            const void *salt, const size_t saltlen, void *hash,
            const size_t hashlen, char *encoded, const size_t encodedlen,
            argon2_type type)
{
    argon2_context context;
    int            result;
    uint8_t       *out;

    if (pwdlen > ARGON2_MAX_PWD_LENGTH) {
        return ARGON2_PWD_TOO_LONG;
    }

    if (hashlen > ARGON2_MAX_OUTLEN) {
        return ARGON2_OUTPUT_TOO_LONG;
    }

    if (saltlen > ARGON2_MAX_SALT_LENGTH) {
        return ARGON2_SALT_TOO_LONG;
    }

    out = (uint8_t *) FUNC3(hashlen);
    if (!out) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }

    context.out       = (uint8_t *) out;
    context.outlen    = (uint32_t) hashlen;
    context.pwd       = (uint8_t *) pwd;
    context.pwdlen    = (uint32_t) pwdlen;
    context.salt      = (uint8_t *) salt;
    context.saltlen   = (uint32_t) saltlen;
    context.secret    = NULL;
    context.secretlen = 0;
    context.ad        = NULL;
    context.adlen     = 0;
    context.t_cost    = t_cost;
    context.m_cost    = m_cost;
    context.lanes     = parallelism;
    context.threads   = parallelism;
    context.flags     = ARGON2_DEFAULT_FLAGS;

    result = FUNC0(&context, type);

    if (result != ARGON2_OK) {
        FUNC5(out, hashlen);
        FUNC2(out);
        return result;
    }

    /* if raw hash requested, write it */
    if (hash) {
        FUNC4(hash, out, hashlen);
    }

    /* if encoding requested, write it */
    if (encoded && encodedlen) {
        if (FUNC1(encoded, encodedlen, &context, type) != ARGON2_OK) {
            FUNC5(out, hashlen);
            FUNC5(encoded, encodedlen);
            FUNC2(out);
            return ARGON2_ENCODING_FAIL;
        }
    }

    FUNC5(out, hashlen);
    FUNC2(out);

    return ARGON2_OK;
}