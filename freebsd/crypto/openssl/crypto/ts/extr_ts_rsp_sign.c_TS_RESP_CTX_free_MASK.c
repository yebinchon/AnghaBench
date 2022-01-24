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
struct TYPE_4__ {int /*<<< orphan*/  micros; int /*<<< orphan*/  millis; int /*<<< orphan*/  seconds; int /*<<< orphan*/  mds; int /*<<< orphan*/  default_policy; int /*<<< orphan*/  policies; int /*<<< orphan*/  certs; int /*<<< orphan*/  signer_key; int /*<<< orphan*/  signer_cert; } ;
typedef  TYPE_1__ TS_RESP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 

void FUNC8(TS_RESP_CTX *ctx)
{
    if (!ctx)
        return;

    FUNC4(ctx->signer_cert);
    FUNC2(ctx->signer_key);
    FUNC7(ctx->certs, X509_free);
    FUNC5(ctx->policies, ASN1_OBJECT_free);
    FUNC1(ctx->default_policy);
    FUNC6(ctx->mds);   /* No EVP_MD_free method exists. */
    FUNC0(ctx->seconds);
    FUNC0(ctx->millis);
    FUNC0(ctx->micros);
    FUNC3(ctx);
}