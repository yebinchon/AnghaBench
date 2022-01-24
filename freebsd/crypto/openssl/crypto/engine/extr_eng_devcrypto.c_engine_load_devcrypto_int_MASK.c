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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  cfd ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devcrypto_ciphers ; 
 int /*<<< orphan*/  devcrypto_dh ; 
 int /*<<< orphan*/  devcrypto_digests ; 
 int /*<<< orphan*/  devcrypto_dsa ; 
 int /*<<< orphan*/  devcrypto_ec ; 
 int /*<<< orphan*/  devcrypto_rsa ; 
 int /*<<< orphan*/  devcrypto_unload ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC18 (scalar_t__) ; 

void FUNC19()
{
    ENGINE *e = NULL;

    if ((cfd = FUNC15("/dev/crypto", O_RDWR, 0)) < 0) {
#ifndef ENGINE_DEVCRYPTO_DEBUG
        if (errno != ENOENT)
#endif
            FUNC14(stderr, "Could not open /dev/crypto: %s\n", FUNC18(errno));
        return;
    }

    if ((e = FUNC2()) == NULL
        || !FUNC8(e, devcrypto_unload)) {
        FUNC1(e);
        /*
         * We know that devcrypto_unload() won't be called when one of the
         * above two calls have failed, so we close cfd explicitly here to
         * avoid leaking resources.
         */
        FUNC13(cfd);
        return;
    }

    FUNC16();
#ifdef IMPLEMENT_DIGEST
    prepare_digest_methods();
#endif

    if (!FUNC10(e, "devcrypto")
        || !FUNC11(e, "/dev/crypto engine")

/*
 * Asymmetric ciphers aren't well supported with /dev/crypto.  Among the BSD
 * implementations, it seems to only exist in FreeBSD, and regarding the
 * parameters in its crypt_kop, the manual crypto(4) has this to say:
 *
 *    The semantics of these arguments are currently undocumented.
 *
 * Reading through the FreeBSD source code doesn't give much more than
 * their CRK_MOD_EXP implementation for ubsec.
 *
 * It doesn't look much better with cryptodev-linux.  They have the crypt_kop
 * structure as well as the command (CRK_*) in cryptodev.h, but no support
 * seems to be implemented at all for the moment.
 *
 * At the time of writing, it seems impossible to write proper support for
 * FreeBSD's asym features without some very deep knowledge and access to
 * specific kernel modules.
 *
 * /Richard Levitte, 2017-05-11
 */
#if 0
# ifndef OPENSSL_NO_RSA
        || !ENGINE_set_RSA(e, devcrypto_rsa)
# endif
# ifndef OPENSSL_NO_DSA
        || !ENGINE_set_DSA(e, devcrypto_dsa)
# endif
# ifndef OPENSSL_NO_DH
        || !ENGINE_set_DH(e, devcrypto_dh)
# endif
# ifndef OPENSSL_NO_EC
        || !ENGINE_set_EC(e, devcrypto_ec)
# endif
#endif
        || !FUNC7(e, devcrypto_ciphers)
#ifdef IMPLEMENT_DIGEST
        || !ENGINE_set_digests(e, devcrypto_digests)
#endif
        ) {
        FUNC1(e);
        return;
    }

    FUNC0(e);
    FUNC1(e);          /* Loose our local reference */
    FUNC12();
}