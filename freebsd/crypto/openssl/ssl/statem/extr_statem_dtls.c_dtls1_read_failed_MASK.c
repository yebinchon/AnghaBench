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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_FLAGS_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_DTLS1_READ_FAILED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(SSL *s, int code)
{
    if (code > 0) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_DTLS1_READ_FAILED, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!FUNC5(s) || FUNC6(s)) {
        /*
         * not a timeout, none of our business, let higher layers handle
         * this.  in fact it's probably an error
         */
        return code;
    }
    /* done, no need to send a retransmit */
    if (!FUNC2(s))
    {
        FUNC0(FUNC1(s), BIO_FLAGS_READ);
        return code;
    }

    return FUNC4(s);
}