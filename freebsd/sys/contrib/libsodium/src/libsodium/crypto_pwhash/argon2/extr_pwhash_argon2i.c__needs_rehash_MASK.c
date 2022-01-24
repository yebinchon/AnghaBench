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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  argon2_type ;
struct TYPE_4__ {unsigned char* out; unsigned char* pwd; unsigned char* salt; unsigned int adlen; unsigned int secretlen; scalar_t__ t_cost; scalar_t__ m_cost; int /*<<< orphan*/ * secret; int /*<<< orphan*/  ad; scalar_t__ saltlen; scalar_t__ pwdlen; scalar_t__ outlen; } ;
typedef  TYPE_1__ argon2_context ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 unsigned long long UINT32_MAX ; 
 scalar_t__ FUNC0 (size_t,unsigned int) ; 
 size_t crypto_pwhash_STRBYTES ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(const char *str, unsigned long long opslimit, size_t memlimit,
              argon2_type type)
{
    unsigned char  *fodder;
    argon2_context  ctx;
    size_t          fodder_len;
    int             ret = -1;

    fodder_len = FUNC4(str);
    memlimit /= 1024U;
    if (opslimit > UINT32_MAX || memlimit > UINT32_MAX ||
        fodder_len >= crypto_pwhash_STRBYTES) {
        errno = EINVAL;
        return -1;
    }
    FUNC3(&ctx, 0, sizeof ctx);
    if ((fodder = (unsigned char *) FUNC0(fodder_len, 1U)) == NULL) {
        return -1; /* LCOV_EXCL_LINE */
    }
    ctx.out    = ctx.pwd       = ctx.salt    = fodder;
    ctx.outlen = ctx.pwdlen    = ctx.saltlen = (uint32_t) fodder_len;
    ctx.ad     = *(ctx.secret    = NULL);
    ctx.adlen  = ctx.secretlen = 0U;
    if (FUNC1(&ctx, str, type) != 0) {
        errno = EINVAL;
        ret = -1;
    } else if (ctx.t_cost != (uint32_t) opslimit ||
               ctx.m_cost != (uint32_t) memlimit) {
        ret = 1;
    } else {
        ret = 0;
    }
    FUNC2(fodder);

    return ret;
}