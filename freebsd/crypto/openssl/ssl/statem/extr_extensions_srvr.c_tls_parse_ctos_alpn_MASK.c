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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_7__ {TYPE_1__* s3; } ;
struct TYPE_6__ {int /*<<< orphan*/  alpn_proposed_len; int /*<<< orphan*/ * alpn_proposed; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_CTOS_ALPN ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                        size_t chainidx)
{
    PACKET protocol_list, save_protocol_list, protocol;

    if (!FUNC5(s))
        return 1;

    if (!FUNC1(pkt, &protocol_list)
        || FUNC4(&protocol_list) < 2) {
        FUNC6(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_ALPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }

    save_protocol_list = protocol_list;
    do {
        /* Protocol names can't be empty. */
        if (!FUNC2(&protocol_list, &protocol)
                || FUNC4(&protocol) == 0) {
            FUNC6(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_ALPN,
                     SSL_R_BAD_EXTENSION);
            return 0;
        }
    } while (FUNC4(&protocol_list) != 0);

    FUNC0(s->s3->alpn_proposed);
    s->s3->alpn_proposed = NULL;
    s->s3->alpn_proposed_len = 0;
    if (!FUNC3(&save_protocol_list,
                       &s->s3->alpn_proposed, &s->s3->alpn_proposed_len)) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_ALPN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}