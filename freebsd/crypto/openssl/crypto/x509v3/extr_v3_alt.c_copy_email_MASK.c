#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_9__ {scalar_t__ flags; int /*<<< orphan*/ * subject_req; int /*<<< orphan*/ * subject_cert; } ;
typedef  TYPE_2__ X509V3_CTX ;
struct TYPE_8__ {int /*<<< orphan*/ * ia5; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; TYPE_1__ d; } ;
typedef  int /*<<< orphan*/  GENERAL_NAMES ;
typedef  TYPE_3__ GENERAL_NAME ;
typedef  int /*<<< orphan*/  ASN1_IA5STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CTX_TEST ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  GEN_EMAIL ; 
 int /*<<< orphan*/  NID_pkcs9_emailAddress ; 
 int /*<<< orphan*/  X509V3_F_COPY_EMAIL ; 
 int /*<<< orphan*/  X509V3_R_NO_SUBJECT_DETAILS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC13(X509V3_CTX *ctx, GENERAL_NAMES *gens, int move_p)
{
    X509_NAME *nm;
    ASN1_IA5STRING *email = NULL;
    X509_NAME_ENTRY *ne;
    GENERAL_NAME *gen = NULL;
    int i = -1;

    if (ctx != NULL && ctx->flags == CTX_TEST)
        return 1;
    if (ctx == NULL
        || (ctx->subject_cert == NULL && ctx->subject_req == NULL)) {
        FUNC4(X509V3_F_COPY_EMAIL, X509V3_R_NO_SUBJECT_DETAILS);
        goto err;
    }
    /* Find the subject name */
    if (ctx->subject_cert)
        nm = FUNC11(ctx->subject_cert);
    else
        nm = FUNC10(ctx->subject_req);

    /* Now add any email address(es) to STACK */
    while ((i = FUNC9(nm,
                                           NID_pkcs9_emailAddress, i)) >= 0) {
        ne = FUNC8(nm, i);
        email = FUNC1(FUNC6(ne));
        if (move_p) {
            FUNC7(nm, i);
            FUNC5(ne);
            i--;
        }
        if (email == NULL || (gen = FUNC3()) == NULL) {
            FUNC4(X509V3_F_COPY_EMAIL, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        gen->d.ia5 = email;
        email = NULL;
        gen->type = GEN_EMAIL;
        if (!FUNC12(gens, gen)) {
            FUNC4(X509V3_F_COPY_EMAIL, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        gen = NULL;
    }

    return 1;

 err:
    FUNC2(gen);
    FUNC0(email);
    return 0;

}