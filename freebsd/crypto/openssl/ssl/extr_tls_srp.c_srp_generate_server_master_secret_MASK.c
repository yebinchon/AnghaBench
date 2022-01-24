#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  N; int /*<<< orphan*/  b; int /*<<< orphan*/  v; int /*<<< orphan*/  A; int /*<<< orphan*/  B; } ;
struct TYPE_7__ {TYPE_1__ srp_ctx; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 unsigned char* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SRP_GENERATE_SERVER_MASTER_SECRET ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,unsigned char*,int,int) ; 

int FUNC9(SSL *s)
{
    BIGNUM *K = NULL, *u = NULL;
    int ret = -1, tmp_len = 0;
    unsigned char *tmp = NULL;

    if (!FUNC6(s->srp_ctx.A, s->srp_ctx.N))
        goto err;
    if ((u = FUNC5(s->srp_ctx.A, s->srp_ctx.B, s->srp_ctx.N)) == NULL)
        goto err;
    if ((K = FUNC4(s->srp_ctx.A, s->srp_ctx.v, u, s->srp_ctx.b,
                                 s->srp_ctx.N)) == NULL)
        goto err;

    tmp_len = FUNC2(K);
    if ((tmp = FUNC3(tmp_len)) == NULL) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_SRP_GENERATE_SERVER_MASTER_SECRET, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    FUNC0(K, tmp);
    /* Calls SSLfatal() as required */
    ret = FUNC8(s, tmp, tmp_len, 1);
 err:
    FUNC1(K);
    FUNC1(u);
    return ret;
}