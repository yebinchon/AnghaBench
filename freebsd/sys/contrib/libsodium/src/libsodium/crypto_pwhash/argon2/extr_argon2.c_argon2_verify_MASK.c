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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  argon2_type ;
struct TYPE_4__ {int /*<<< orphan*/ * out; void* outlen; int /*<<< orphan*/ * salt; int /*<<< orphan*/ * ad; void* saltlen; int /*<<< orphan*/  threads; int /*<<< orphan*/  m_cost; int /*<<< orphan*/  t_cost; void* adlen; scalar_t__ secretlen; int /*<<< orphan*/ * secret; scalar_t__ pwdlen; int /*<<< orphan*/ * pwd; } ;
typedef  TYPE_1__ argon2_context ;

/* Variables and functions */
 int ARGON2_DECODING_LENGTH_FAIL ; 
 int ARGON2_MEMORY_ALLOCATION_ERROR ; 
 int ARGON2_OK ; 
 int ARGON2_VERIFY_MISMATCH ; 
 size_t UINT32_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t const,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 size_t FUNC6 (char const*) ; 

int
FUNC7(const char *encoded, const void *pwd, const size_t pwdlen,
              argon2_type type)
{
    argon2_context ctx;
    uint8_t       *out;
    int            decode_result;
    int            ret;
    size_t         encoded_len;

    FUNC4(&ctx, 0, sizeof ctx);

    ctx.pwd       = NULL;
    ctx.pwdlen    = 0;
    ctx.secret    = NULL;
    ctx.secretlen = 0;

    /* max values, to be updated in decode_string */
    encoded_len = FUNC6(encoded);
    if (encoded_len > UINT32_MAX) {
        return ARGON2_DECODING_LENGTH_FAIL;
    }
    ctx.adlen   = (uint32_t) encoded_len;
    ctx.saltlen = (uint32_t) encoded_len;
    ctx.outlen  = (uint32_t) encoded_len;

    ctx.ad   = (uint8_t *) FUNC3(ctx.adlen);
    ctx.salt = (uint8_t *) FUNC3(ctx.saltlen);
    ctx.out  = (uint8_t *) FUNC3(ctx.outlen);
    if (!ctx.out || !ctx.salt || !ctx.ad) {
        FUNC2(ctx.ad);
        FUNC2(ctx.salt);
        FUNC2(ctx.out);
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }
    out = (uint8_t *) FUNC3(ctx.outlen);
    if (!out) {
        FUNC2(ctx.ad);
        FUNC2(ctx.salt);
        FUNC2(ctx.out);
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }

    decode_result = FUNC1(&ctx, encoded, type);
    if (decode_result != ARGON2_OK) {
        FUNC2(ctx.ad);
        FUNC2(ctx.salt);
        FUNC2(ctx.out);
        FUNC2(out);
        return decode_result;
    }

    ret = FUNC0(ctx.t_cost, ctx.m_cost, ctx.threads, pwd, pwdlen,
                      ctx.salt, ctx.saltlen, out, ctx.outlen, NULL, 0, type);

    FUNC2(ctx.ad);
    FUNC2(ctx.salt);

    if (ret != ARGON2_OK || FUNC5(out, ctx.out, ctx.outlen) != 0) {
        ret = ARGON2_VERIFY_MISMATCH;
    }
    FUNC2(out);
    FUNC2(ctx.out);

    return ret;
}