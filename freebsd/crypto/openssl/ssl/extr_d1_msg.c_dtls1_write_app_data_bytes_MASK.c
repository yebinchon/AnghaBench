#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int (* handshake_func ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 size_t SSL3_RT_MAX_PLAIN_LENGTH ; 
 int /*<<< orphan*/  SSL_F_DTLS1_WRITE_APP_DATA_BYTES ; 
 int /*<<< orphan*/  SSL_R_DTLS_MESSAGE_TOO_BIG ; 
 int /*<<< orphan*/  SSL_R_SSL_HANDSHAKE_FAILURE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,void const*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(SSL *s, int type, const void *buf_, size_t len,
                               size_t *written)
{
    int i;

    if (FUNC0(s) && !FUNC3(s)) {
        i = s->handshake_func(s);
        if (i < 0)
            return i;
        if (i == 0) {
            FUNC1(SSL_F_DTLS1_WRITE_APP_DATA_BYTES,
                   SSL_R_SSL_HANDSHAKE_FAILURE);
            return -1;
        }
    }

    if (len > SSL3_RT_MAX_PLAIN_LENGTH) {
        FUNC1(SSL_F_DTLS1_WRITE_APP_DATA_BYTES, SSL_R_DTLS_MESSAGE_TOO_BIG);
        return -1;
    }

    return FUNC2(s, type, buf_, len, written);
}