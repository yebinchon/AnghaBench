#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_16__ {scalar_t__ hash; scalar_t__ sig; size_t sig_idx; int curve; } ;
struct TYPE_15__ {size_t shared_sigalgslen; TYPE_2__* cert; TYPE_4__** shared_sigalgs; } ;
struct TYPE_14__ {TYPE_1__* pkeys; } ;
struct TYPE_13__ {int /*<<< orphan*/ * privatekey; } ;
typedef  TYPE_3__ SSL ;
typedef  TYPE_4__ SIGALG_LOOKUP ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_PKEY_DSA ; 
 scalar_t__ EVP_PKEY_EC ; 
 scalar_t__ EVP_PKEY_RSA ; 
 scalar_t__ EVP_PKEY_RSA_PSS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ NID_sha1 ; 
 scalar_t__ NID_sha224 ; 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__ const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const SIGALG_LOOKUP *FUNC8(SSL *s, X509 *x, EVP_PKEY *pkey)
{
    const SIGALG_LOOKUP *lu = NULL;
    size_t i;
#ifndef OPENSSL_NO_EC
    int curve = -1;
#endif
    EVP_PKEY *tmppkey;

    /* Look for a shared sigalgs matching possible certificates */
    for (i = 0; i < s->shared_sigalgslen; i++) {
        lu = s->shared_sigalgs[i];

        /* Skip SHA1, SHA224, DSA and RSA if not PSS */
        if (lu->hash == NID_sha1
            || lu->hash == NID_sha224
            || lu->sig == EVP_PKEY_DSA
            || lu->sig == EVP_PKEY_RSA)
            continue;
        /* Check that we have a cert, and signature_algorithms_cert */
        if (!FUNC7(lu, NULL))
            continue;
        if ((pkey == NULL && !FUNC4(s, lu, -1))
                || (pkey != NULL && !FUNC5(s, lu, x, pkey)))
            continue;

        tmppkey = (pkey != NULL) ? pkey
                                 : s->cert->pkeys[lu->sig_idx].privatekey;

        if (lu->sig == EVP_PKEY_EC) {
#ifndef OPENSSL_NO_EC
            if (curve == -1) {
                EC_KEY *ec = FUNC3(tmppkey);
                curve = FUNC0(FUNC1(ec));
            }
            if (lu->curve != NID_undef && curve != lu->curve)
                continue;
#else
            continue;
#endif
        } else if (lu->sig == EVP_PKEY_RSA_PSS) {
            /* validate that key is large enough for the signature algorithm */
            if (!FUNC6(FUNC2(tmppkey), lu))
                continue;
        }
        break;
    }

    if (i == s->shared_sigalgslen)
        return NULL;

    return lu;
}