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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  escrypt_local_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFBIG ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int) ; 
 unsigned long long crypto_pwhash_scryptsalsa208sha256_PASSWD_MAX ; 
 unsigned long long crypto_pwhash_scryptsalsa208sha256_PASSWD_MIN ; 
 int crypto_pwhash_scryptsalsa208sha256_STRBYTES ; 
 int crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED ; 
 int crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES ; 
 int crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (unsigned long long,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

int
FUNC9(
    char              out[crypto_pwhash_scryptsalsa208sha256_STRBYTES],
    const char *const passwd, unsigned long long passwdlen,
    unsigned long long opslimit, size_t memlimit)
{
    uint8_t salt[crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES];
    char    setting[crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES + 1U];
    escrypt_local_t escrypt_local;
    uint32_t        N_log2;
    uint32_t        p;
    uint32_t        r;

    FUNC6(out, 0, crypto_pwhash_scryptsalsa208sha256_STRBYTES);
    if (passwdlen > crypto_pwhash_scryptsalsa208sha256_PASSWD_MAX) {
        errno = EFBIG; /* LCOV_EXCL_LINE */
        return -1;     /* LCOV_EXCL_LINE */
    }
    if (passwdlen < crypto_pwhash_scryptsalsa208sha256_PASSWD_MIN ||
        FUNC7(opslimit, memlimit, &N_log2, &p, &r) != 0) {
        errno = EINVAL; /* LCOV_EXCL_LINE */
        return -1;      /* LCOV_EXCL_LINE */
    }
    FUNC8(salt, sizeof salt);
    if (FUNC3(N_log2, r, p, salt, sizeof salt, (uint8_t *) setting,
                          sizeof setting) == NULL) {
        errno = EINVAL; /* LCOV_EXCL_LINE */
        return -1;      /* LCOV_EXCL_LINE */
    }
    if (FUNC4(&escrypt_local) != 0) {
        return -1; /* LCOV_EXCL_LINE */
    }
    if (FUNC5(&escrypt_local, (const uint8_t *) passwd, (size_t) passwdlen,
                  (const uint8_t *) setting, (uint8_t *) out,
                  crypto_pwhash_scryptsalsa208sha256_STRBYTES) == NULL) {
        /* LCOV_EXCL_START */
        FUNC2(&escrypt_local);
        errno = EINVAL;
        return -1;
        /* LCOV_EXCL_STOP */
    }
    FUNC2(&escrypt_local);

    FUNC0(
        FUNC1(crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES) ==
        crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES);
    FUNC0(
        crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES + 1U +
            crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED + 1U ==
        crypto_pwhash_scryptsalsa208sha256_STRBYTES);

    return 0;
}