#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_6__ {int /*<<< orphan*/  login; int /*<<< orphan*/ * A; } ;
struct TYPE_8__ {TYPE_2__* session; TYPE_1__ srp_ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/ * srp_username; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CKE_SRP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char**) ; 

__attribute__((used)) static int FUNC6(SSL *s, WPACKET *pkt)
{
#ifndef OPENSSL_NO_SRP
    unsigned char *abytes = NULL;

    if (s->srp_ctx.A == NULL
            || !FUNC5(pkt, FUNC1(s->srp_ctx.A),
                                               &abytes)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_SRP,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    FUNC0(s->srp_ctx.A, abytes);

    FUNC2(s->session->srp_username);
    s->session->srp_username = FUNC3(s->srp_ctx.login);
    if (s->session->srp_username == NULL) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_SRP,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    return 1;
#else
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_SRP,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}