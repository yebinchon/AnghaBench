#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_10__ {TYPE_1__* session_ticket; } ;
struct TYPE_13__ {TYPE_4__* session; TYPE_2__ ext; int /*<<< orphan*/  new_session; } ;
struct TYPE_11__ {size_t ticklen; int /*<<< orphan*/ * tick; } ;
struct TYPE_12__ {scalar_t__ ssl_version; TYPE_3__ ext; } ;
struct TYPE_9__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_5__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_SESSION_TICKET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLSEXT_TYPE_session_ticket ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 

EXT_RETURN FUNC6(SSL *s, WPACKET *pkt,
                                             unsigned int context, X509 *x,
                                             size_t chainidx)
{
    size_t ticklen;

    if (!FUNC5(s))
        return EXT_RETURN_NOT_SENT;

    if (!s->new_session && s->session != NULL
            && s->session->ext.tick != NULL
            && s->session->ssl_version != TLS1_3_VERSION) {
        ticklen = s->session->ext.ticklen;
    } else if (s->session && s->ext.session_ticket != NULL
               && s->ext.session_ticket->data != NULL) {
        ticklen = s->ext.session_ticket->length;
        s->session->ext.tick = FUNC0(ticklen);
        if (s->session->ext.tick == NULL) {
            FUNC1(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_SESSION_TICKET,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        FUNC4(s->session->ext.tick,
               s->ext.session_ticket->data, ticklen);
        s->session->ext.ticklen = ticklen;
    } else {
        ticklen = 0;
    }

    if (ticklen == 0 && s->ext.session_ticket != NULL &&
            s->ext.session_ticket->data == NULL)
        return EXT_RETURN_NOT_SENT;

    if (!FUNC2(pkt, TLSEXT_TYPE_session_ticket)
            || !FUNC3(pkt, s->session->ext.tick, ticklen)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SESSION_TICKET, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}