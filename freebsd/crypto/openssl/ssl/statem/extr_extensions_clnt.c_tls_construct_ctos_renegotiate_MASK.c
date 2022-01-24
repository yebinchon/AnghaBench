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
struct TYPE_6__ {TYPE_1__* s3; int /*<<< orphan*/  renegotiate; } ;
struct TYPE_5__ {int /*<<< orphan*/  previous_client_finished_len; int /*<<< orphan*/  previous_client_finished; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_RENEGOTIATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_renegotiate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

EXT_RETURN FUNC5(SSL *s, WPACKET *pkt,
                                          unsigned int context, X509 *x,
                                          size_t chainidx)
{
    /* Add RI if renegotiating */
    if (!s->renegotiate)
        return EXT_RETURN_NOT_SENT;

    if (!FUNC2(pkt, TLSEXT_TYPE_renegotiate)
            || !FUNC3(pkt)
            || !FUNC4(pkt, s->s3->previous_client_finished,
                               s->s3->previous_client_finished_len)
            || !FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_RENEGOTIATE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}