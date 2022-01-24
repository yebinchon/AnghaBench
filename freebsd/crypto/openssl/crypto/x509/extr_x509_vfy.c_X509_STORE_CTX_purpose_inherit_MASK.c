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
struct TYPE_7__ {TYPE_1__* param; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
struct TYPE_8__ {int trust; } ;
typedef  TYPE_3__ X509_PURPOSE ;
struct TYPE_6__ {int purpose; int trust; } ;

/* Variables and functions */
 int /*<<< orphan*/  X509_F_X509_STORE_CTX_PURPOSE_INHERIT ; 
 TYPE_3__* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  X509_R_UNKNOWN_PURPOSE_ID ; 
 int /*<<< orphan*/  X509_R_UNKNOWN_TRUST_ID ; 
 int X509_TRUST_DEFAULT ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(X509_STORE_CTX *ctx, int def_purpose,
                                   int purpose, int trust)
{
    int idx;
    /* If purpose not set use default */
    if (!purpose)
        purpose = def_purpose;
    /* If we have a purpose then check it is valid */
    if (purpose) {
        X509_PURPOSE *ptmp;
        idx = FUNC1(purpose);
        if (idx == -1) {
            FUNC3(X509_F_X509_STORE_CTX_PURPOSE_INHERIT,
                    X509_R_UNKNOWN_PURPOSE_ID);
            return 0;
        }
        ptmp = FUNC0(idx);
        if (ptmp->trust == X509_TRUST_DEFAULT) {
            idx = FUNC1(def_purpose);
            /*
             * XXX: In the two callers above def_purpose is always 0, which is
             * not a known value, so idx will always be -1.  How is the
             * X509_TRUST_DEFAULT case actually supposed to be handled?
             */
            if (idx == -1) {
                FUNC3(X509_F_X509_STORE_CTX_PURPOSE_INHERIT,
                        X509_R_UNKNOWN_PURPOSE_ID);
                return 0;
            }
            ptmp = FUNC0(idx);
        }
        /* If trust not set then get from purpose default */
        if (!trust)
            trust = ptmp->trust;
    }
    if (trust) {
        idx = FUNC2(trust);
        if (idx == -1) {
            FUNC3(X509_F_X509_STORE_CTX_PURPOSE_INHERIT,
                    X509_R_UNKNOWN_TRUST_ID);
            return 0;
        }
    }

    if (purpose && !ctx->param->purpose)
        ctx->param->purpose = purpose;
    if (trust && !ctx->param->trust)
        ctx->param->trust = trust;
    return 1;
}