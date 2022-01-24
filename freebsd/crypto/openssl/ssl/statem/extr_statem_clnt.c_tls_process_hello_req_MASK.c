#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int options; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_FINISHED_READING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL3_AL_WARNING ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_NO_RENEGOTIATION ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_HELLO_REQ ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int SSL_OP_NO_RENEGOTIATION ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

MSG_PROCESS_RETURN FUNC6(SSL *s, PACKET *pkt)
{
    if (FUNC0(pkt) > 0) {
        /* should contain no data */
        FUNC4(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_HELLO_REQ,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }

    if ((s->options & SSL_OP_NO_RENEGOTIATION)) {
        FUNC5(s, SSL3_AL_WARNING, SSL_AD_NO_RENEGOTIATION);
        return MSG_PROCESS_FINISHED_READING;
    }

    /*
     * This is a historical discrepancy (not in the RFC) maintained for
     * compatibility reasons. If a TLS client receives a HelloRequest it will
     * attempt an abbreviated handshake. However if a DTLS client receives a
     * HelloRequest it will do a full handshake. Either behaviour is reasonable
     * but doing one for TLS and another for DTLS is odd.
     */
    if (FUNC1(s))
        FUNC2(s);
    else
        FUNC3(s);

    return MSG_PROCESS_FINISHED_READING;
}