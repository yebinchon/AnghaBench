#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_6__ {TYPE_1__* s3; } ;
struct TYPE_5__ {int /*<<< orphan*/  previous_server_finished_len; int /*<<< orphan*/  previous_server_finished; int /*<<< orphan*/  previous_client_finished_len; int /*<<< orphan*/  previous_client_finished; int /*<<< orphan*/  send_connection_binding; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_STOC_RENEGOTIATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_renegotiate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

EXT_RETURN FUNC6(SSL *s, WPACKET *pkt,
                                          unsigned int context, X509 *x,
                                          size_t chainidx)
{
    if (!s->s3->send_connection_binding)
        return EXT_RETURN_NOT_SENT;

    /* Still add this even if SSL_OP_NO_RENEGOTIATION is set */
    if (!FUNC3(pkt, TLSEXT_TYPE_renegotiate)
            || !FUNC4(pkt)
            || !FUNC5(pkt)
            || !FUNC2(pkt, s->s3->previous_client_finished,
                               s->s3->previous_client_finished_len)
            || !FUNC2(pkt, s->s3->previous_server_finished,
                               s->s3->previous_server_finished_len)
            || !FUNC1(pkt)
            || !FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_RENEGOTIATE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}