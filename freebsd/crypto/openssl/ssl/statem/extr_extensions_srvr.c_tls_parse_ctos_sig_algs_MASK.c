#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_5__ {int /*<<< orphan*/  hit; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_CTOS_SIG_ALGS ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                            size_t chainidx)
{
    PACKET supported_sig_algs;

    if (!FUNC0(pkt, &supported_sig_algs)
            || FUNC1(&supported_sig_algs) == 0) {
        FUNC2(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_SIG_ALGS, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (!s->hit && !FUNC3(s, &supported_sig_algs, 0)) {
        FUNC2(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_SIG_ALGS, SSL_R_BAD_EXTENSION);
        return 0;
    }

    return 1;
}