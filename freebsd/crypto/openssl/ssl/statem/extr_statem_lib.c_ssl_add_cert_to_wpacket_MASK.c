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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_3_CERTIFICATE ; 
 int /*<<< orphan*/  SSL_F_SSL_ADD_CERT_TO_WPACKET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(SSL *s, WPACKET *pkt, X509 *x, int chain)
{
    int len;
    unsigned char *outbytes;

    len = FUNC3(x, NULL);
    if (len < 0) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_ADD_CERT_TO_WPACKET,
                 ERR_R_BUF_LIB);
        return 0;
    }
    if (!FUNC2(pkt, len, &outbytes)
            || FUNC3(x, &outbytes) != len) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_ADD_CERT_TO_WPACKET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (FUNC0(s)
            && !FUNC4(s, pkt, SSL_EXT_TLS1_3_CERTIFICATE, x,
                                         chain)) {
        /* SSLfatal() already called */
        return 0;
    }

    return 1;
}