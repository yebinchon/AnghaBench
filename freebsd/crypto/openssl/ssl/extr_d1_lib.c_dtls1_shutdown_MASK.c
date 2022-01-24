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
struct TYPE_5__ {int shutdown; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int SSL_SENT_SHUTDOWN ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(SSL *s)
{
    int ret;
#ifndef OPENSSL_NO_SCTP
    BIO *wbio;

    wbio = FUNC3(s);
    if (wbio != NULL && FUNC1(wbio) &&
        !(s->shutdown & SSL_SENT_SHUTDOWN)) {
        ret = FUNC2(wbio);
        if (ret < 0)
            return -1;

        if (ret == 0)
            FUNC0(FUNC3(s), BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN, 1,
                     NULL);
    }
#endif
    ret = FUNC4(s);
#ifndef OPENSSL_NO_SCTP
    FUNC0(FUNC3(s), BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN, 0, NULL);
#endif
    return ret;
}