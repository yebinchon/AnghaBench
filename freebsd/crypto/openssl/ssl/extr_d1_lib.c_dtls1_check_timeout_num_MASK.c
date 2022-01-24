#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* d1; } ;
struct TYPE_8__ {int num_alerts; } ;
struct TYPE_9__ {size_t mtu; TYPE_1__ timeout; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CTRL_DGRAM_GET_FALLBACK_MTU ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DTLS1_TMO_ALERT_COUNT ; 
 int /*<<< orphan*/  SSL_AD_NO_ALERT ; 
 int /*<<< orphan*/  SSL_F_DTLS1_CHECK_TIMEOUT_NUM ; 
 int SSL_OP_NO_QUERY_MTU ; 
 int /*<<< orphan*/  SSL_R_READ_TIMEOUT_EXPIRED ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(SSL *s)
{
    size_t mtu;

    s->d1->timeout.num_alerts++;

    /* Reduce MTU after 2 unsuccessful retransmissions */
    if (s->d1->timeout.num_alerts > 2
        && !(FUNC1(s) & SSL_OP_NO_QUERY_MTU)) {
        mtu =
            FUNC0(FUNC2(s), BIO_CTRL_DGRAM_GET_FALLBACK_MTU, 0, NULL);
        if (mtu < s->d1->mtu)
            s->d1->mtu = mtu;
    }

    if (s->d1->timeout.num_alerts > DTLS1_TMO_ALERT_COUNT) {
        /* fail the connection, enough alerts have been sent */
        FUNC3(s, SSL_AD_NO_ALERT, SSL_F_DTLS1_CHECK_TIMEOUT_NUM,
                 SSL_R_READ_TIMEOUT_EXPIRED);
        return -1;
    }

    return 0;
}