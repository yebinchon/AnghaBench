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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_4__ {scalar_t__ sig; scalar_t__ hash; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ SIGALG_LOOKUP ;

/* Variables and functions */
 scalar_t__ EVP_PKEY_RSA ; 
 scalar_t__ NID_sha1 ; 
 scalar_t__ NID_sha224 ; 
 int /*<<< orphan*/  SSL_F_TLS12_COPY_SIGALGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM ; 
 int /*<<< orphan*/  SSL_SECOP_SIGALG_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/  const) ; 

int FUNC5(SSL *s, WPACKET *pkt,
                       const uint16_t *psig, size_t psiglen)
{
    size_t i;
    int rv = 0;

    for (i = 0; i < psiglen; i++, psig++) {
        const SIGALG_LOOKUP *lu = FUNC4(*psig);

        if (!FUNC3(s, SSL_SECOP_SIGALG_SUPPORTED, lu))
            continue;
        if (!FUNC2(pkt, *psig))
            return 0;
        /*
         * If TLS 1.3 must have at least one valid TLS 1.3 message
         * signing algorithm: i.e. neither RSA nor SHA1/SHA224
         */
        if (rv == 0 && (!FUNC0(s)
            || (lu->sig != EVP_PKEY_RSA
                && lu->hash != NID_sha1
                && lu->hash != NID_sha224)))
            rv = 1;
    }
    if (rv == 0)
        FUNC1(SSL_F_TLS12_COPY_SIGALGS, SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM);
    return rv;
}