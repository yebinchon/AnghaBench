#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_7__ {TYPE_1__* session; scalar_t__ hit; } ;
struct TYPE_6__ {int /*<<< orphan*/  timeout; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_CREATE_TICKET_PREQUEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TICKET_NONCE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(SSL *s, WPACKET *pkt, uint32_t age_add,
                                 unsigned char *tick_nonce)
{
    /*
     * Ticket lifetime hint: For TLSv1.2 this is advisory only and we leave this
     * unspecified for resumed session (for simplicity).
     * In TLSv1.3 we reset the "time" field above, and always specify the
     * timeout.
     */
    if (!FUNC2(pkt,
                               (s->hit && !FUNC0(s))
                               ? 0 : s->session->timeout)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR, SSL_F_CREATE_TICKET_PREQUEL,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (FUNC0(s)) {
        if (!FUNC2(pkt, age_add)
                || !FUNC4(pkt, tick_nonce, TICKET_NONCE_SIZE)) {
            FUNC1(s, SSL_AD_INTERNAL_ERROR, SSL_F_CREATE_TICKET_PREQUEL,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    /* Start the sub-packet for the actual ticket data */
    if (!FUNC3(pkt)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR, SSL_F_CREATE_TICKET_PREQUEL,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}