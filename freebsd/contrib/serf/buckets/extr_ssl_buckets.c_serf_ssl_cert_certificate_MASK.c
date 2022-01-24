#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ssl_cert; } ;
typedef  TYPE_1__ serf_ssl_certificate_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  APR_HASH_KEY_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  EscapeNulAndCopy ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 

apr_hash_t *FUNC14(
    const serf_ssl_certificate_t *cert,
    apr_pool_t *pool)
{
    apr_hash_t *tgt = FUNC9(pool);
    unsigned int md_size, i;
    unsigned char md[EVP_MAX_MD_SIZE];
    BIO *bio;
    apr_array_header_t *san_arr;

    /* sha1 fingerprint */
    if (FUNC6(cert->ssl_cert, FUNC5(), md, &md_size)) {
        const char hex[] = "0123456789ABCDEF";
        char fingerprint[EVP_MAX_MD_SIZE * 3];

        for (i=0; i<md_size; i++) {
            fingerprint[3*i] = hex[(md[i] & 0xf0) >> 4];
            fingerprint[(3*i)+1] = hex[(md[i] & 0x0f)];
            fingerprint[(3*i)+2] = ':';
        }
        if (md_size > 0)
            fingerprint[(3*(md_size-1))+2] = '\0';
        else
            fingerprint[0] = '\0';

        FUNC10(tgt, "sha1", APR_HASH_KEY_STRING,
                     FUNC11(pool, fingerprint));
    }

    /* set expiry dates */
    bio = FUNC2(FUNC4());
    if (bio) {
        ASN1_TIME *notBefore, *notAfter;
        char buf[256];

        FUNC13 (buf, 0, sizeof (buf));
        notBefore = FUNC8(cert->ssl_cert);
        if (FUNC0(bio, notBefore)) {
            FUNC3(bio, buf, 255);
            FUNC10(tgt, "notBefore", APR_HASH_KEY_STRING,
                         FUNC11(pool, buf));
        }
        FUNC13 (buf, 0, sizeof (buf));
        notAfter = FUNC7(cert->ssl_cert);
        if (FUNC0(bio, notAfter)) {
            FUNC3(bio, buf, 255);
            FUNC10(tgt, "notAfter", APR_HASH_KEY_STRING,
                         FUNC11(pool, buf));
        }
    }
    FUNC1(bio);

    /* Get subjectAltNames */
    if (!FUNC12(&san_arr, cert->ssl_cert, EscapeNulAndCopy, pool))
        FUNC10(tgt, "subjectAltName", APR_HASH_KEY_STRING, san_arr);

    return tgt;
}