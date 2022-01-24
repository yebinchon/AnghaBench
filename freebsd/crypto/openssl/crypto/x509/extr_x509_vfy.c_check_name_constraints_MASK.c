#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int error; TYPE_1__* param; int /*<<< orphan*/  chain; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_15__ {int ex_flags; int /*<<< orphan*/ * nc; } ;
typedef  TYPE_3__ X509 ;
struct TYPE_13__ {int hostflags; } ;
typedef  int /*<<< orphan*/  NAME_CONSTRAINTS ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int EXFLAG_PROXY ; 
 int EXFLAG_SI ; 
 int /*<<< orphan*/  GEN_DNS ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int NID_commonName ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT ; 
 int X509_CHECK_FLAG_NEVER_CHECK_SUBJECT ; 
 int /*<<< orphan*/  X509_F_CHECK_NAME_CONSTRAINTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
#define  X509_V_ERR_OUT_OF_MEM 129 
 int X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION ; 
#define  X509_V_OK 128 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_3__*,int,int) ; 

__attribute__((used)) static int FUNC19(X509_STORE_CTX *ctx)
{
    int i;

    /* Check name constraints for all certificates */
    for (i = FUNC16(ctx->chain) - 1; i >= 0; i--) {
        X509 *x = FUNC17(ctx->chain, i);
        int j;

        /* Ignore self issued certs unless last in chain */
        if (i && (x->ex_flags & EXFLAG_SI))
            continue;

        /*
         * Proxy certificates policy has an extra constraint, where the
         * certificate subject MUST be the issuer with a single CN entry
         * added.
         * (RFC 3820: 3.4, 4.1.3 (a)(4))
         */
        if (x->ex_flags & EXFLAG_PROXY) {
            X509_NAME *tmpsubject = FUNC13(x);
            X509_NAME *tmpissuer = FUNC12(x);
            X509_NAME_ENTRY *tmpentry = NULL;
            int last_object_nid = 0;
            int err = X509_V_OK;
            int last_object_loc = FUNC9(tmpsubject) - 1;

            /* Check that there are at least two RDNs */
            if (last_object_loc < 1) {
                err = X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION;
                goto proxy_name_done;
            }

            /*
             * Check that there is exactly one more RDN in subject as
             * there is in issuer.
             */
            if (FUNC9(tmpsubject)
                != FUNC9(tmpissuer) + 1) {
                err = X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION;
                goto proxy_name_done;
            }

            /*
             * Check that the last subject component isn't part of a
             * multivalued RDN
             */
            if (FUNC5(FUNC11(tmpsubject,
                                                        last_object_loc))
                == FUNC5(FUNC11(tmpsubject,
                                                           last_object_loc - 1))) {
                err = X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION;
                goto proxy_name_done;
            }

            /*
             * Check that the last subject RDN is a commonName, and that
             * all the previous RDNs match the issuer exactly
             */
            tmpsubject = FUNC8(tmpsubject);
            if (tmpsubject == NULL) {
                FUNC14(X509_F_CHECK_NAME_CONSTRAINTS, ERR_R_MALLOC_FAILURE);
                ctx->error = X509_V_ERR_OUT_OF_MEM;
                return 0;
            }

            tmpentry =
                FUNC7(tmpsubject, last_object_loc);
            last_object_nid =
                FUNC2(FUNC4(tmpentry));

            if (last_object_nid != NID_commonName
                || FUNC6(tmpsubject, tmpissuer) != 0) {
                err = X509_V_ERR_PROXY_SUBJECT_NAME_VIOLATION;
            }

            FUNC3(tmpentry);
            FUNC10(tmpsubject);

         proxy_name_done:
            if (err != X509_V_OK
                && !FUNC18(ctx, x, i, err))
                return 0;
        }

        /*
         * Check against constraints for all certificates higher in chain
         * including trust anchor. Trust anchor not strictly speaking needed
         * but if it includes constraints it is to be assumed it expects them
         * to be obeyed.
         */
        for (j = FUNC16(ctx->chain) - 1; j > i; j--) {
            NAME_CONSTRAINTS *nc = FUNC17(ctx->chain, j)->nc;

            if (nc) {
                int rv = FUNC0(x, nc);

                /* If EE certificate check commonName too */
                if (rv == X509_V_OK && i == 0
                    && (ctx->param->hostflags
                        & X509_CHECK_FLAG_NEVER_CHECK_SUBJECT) == 0
                    && ((ctx->param->hostflags
                         & X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT) != 0
                        || !FUNC15(x, GEN_DNS)))
                    rv = FUNC1(x, nc);

                switch (rv) {
                case X509_V_OK:
                    break;
                case X509_V_ERR_OUT_OF_MEM:
                    return 0;
                default:
                    if (!FUNC18(ctx, x, i, rv))
                        return 0;
                    break;
                }
            }
        }
    }
    return 1;
}