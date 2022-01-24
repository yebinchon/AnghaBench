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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL_LOG_RSA_CLIENT_KEY_EXCHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,size_t) ; 

int FUNC2(SSL *ssl,
                                    const uint8_t *encrypted_premaster,
                                    size_t encrypted_premaster_len,
                                    const uint8_t *premaster,
                                    size_t premaster_len)
{
    if (encrypted_premaster_len < 8) {
        FUNC0(ssl, SSL_AD_INTERNAL_ERROR,
                 SSL_F_SSL_LOG_RSA_CLIENT_KEY_EXCHANGE, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /* We only want the first 8 bytes of the encrypted premaster as a tag. */
    return FUNC1("RSA",
                          ssl,
                          encrypted_premaster,
                          8,
                          premaster,
                          premaster_len);
}