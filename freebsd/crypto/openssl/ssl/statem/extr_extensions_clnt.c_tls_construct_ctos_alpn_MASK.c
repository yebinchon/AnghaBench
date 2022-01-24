#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_8__ {int /*<<< orphan*/  alpn_len; int /*<<< orphan*/ * alpn; } ;
struct TYPE_9__ {TYPE_1__* s3; TYPE_2__ ext; } ;
struct TYPE_7__ {int alpn_sent; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_ALPN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_application_layer_protocol_negotiation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

EXT_RETURN FUNC6(SSL *s, WPACKET *pkt, unsigned int context,
                                   X509 *x, size_t chainidx)
{
    s->s3->alpn_sent = 0;

    if (s->ext.alpn == NULL || !FUNC0(s))
        return EXT_RETURN_NOT_SENT;

    if (!FUNC3(pkt,
                TLSEXT_TYPE_application_layer_protocol_negotiation)
               /* Sub-packet ALPN extension */
            || !FUNC4(pkt)
            || !FUNC5(pkt, s->ext.alpn, s->ext.alpn_len)
            || !FUNC2(pkt)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_ALPN,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }
    s->s3->alpn_sent = 1;

    return EXT_RETURN_SENT;
}