#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
#define  X509_V_ERR_CERT_HAS_EXPIRED 137 
#define  X509_V_ERR_CRL_HAS_EXPIRED 136 
#define  X509_V_ERR_CRL_NOT_YET_VALID 135 
#define  X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT 134 
#define  X509_V_ERR_INVALID_CA 133 
#define  X509_V_ERR_INVALID_NON_CA 132 
#define  X509_V_ERR_INVALID_PURPOSE 131 
#define  X509_V_ERR_NO_EXPLICIT_POLICY 130 
#define  X509_V_ERR_PATH_LENGTH_EXCEEDED 129 
#define  X509_V_ERR_UNHANDLED_CRITICAL_EXTENSION 128 
 int X509_V_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v_verbose ; 

__attribute__((used)) static int FUNC11(int ok, X509_STORE_CTX *ctx)
{
    int cert_error = FUNC5(ctx);
    X509 *current_cert = FUNC4(ctx);

    if (!ok) {
        if (current_cert != NULL) {
            FUNC2(bio_err,
                            FUNC7(current_cert),
                            0, FUNC9());
            FUNC0(bio_err, "\n");
        }
        FUNC0(bio_err, "%serror %d at %d depth lookup: %s\n",
               FUNC3(ctx) ? "[CRL path] " : "",
               cert_error,
               FUNC6(ctx),
               FUNC8(cert_error));

        /*
         * Pretend that some errors are ok, so they don't stop further
         * processing of the certificate chain.  Setting ok = 1 does this.
         * After X509_verify_cert() is done, we verify that there were
         * no actual errors, even if the returned value was positive.
         */
        switch (cert_error) {
        case X509_V_ERR_NO_EXPLICIT_POLICY:
            FUNC10(ctx);
            /* fall thru */
        case X509_V_ERR_CERT_HAS_EXPIRED:
            /* Continue even if the leaf is a self signed cert */
        case X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT:
            /* Continue after extension errors too */
        case X509_V_ERR_INVALID_CA:
        case X509_V_ERR_INVALID_NON_CA:
        case X509_V_ERR_PATH_LENGTH_EXCEEDED:
        case X509_V_ERR_INVALID_PURPOSE:
        case X509_V_ERR_CRL_HAS_EXPIRED:
        case X509_V_ERR_CRL_NOT_YET_VALID:
        case X509_V_ERR_UNHANDLED_CRITICAL_EXTENSION:
            ok = 1;
        }

        return ok;

    }
    if (cert_error == X509_V_OK && ok == 2)
        FUNC10(ctx);
    if (!v_verbose)
        FUNC1();
    return ok;
}