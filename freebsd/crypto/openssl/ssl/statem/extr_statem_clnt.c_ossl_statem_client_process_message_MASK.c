#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int hand_state; } ;
struct TYPE_19__ {TYPE_2__ statem; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  TYPE_2__ OSSL_STATEM ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
#define  DTLS_ST_CR_HELLO_VERIFY_REQUEST 141 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_OSSL_STATEM_CLIENT_PROCESS_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TLS_ST_CR_CERT 140 
#define  TLS_ST_CR_CERT_REQ 139 
#define  TLS_ST_CR_CERT_STATUS 138 
#define  TLS_ST_CR_CERT_VRFY 137 
#define  TLS_ST_CR_CHANGE 136 
#define  TLS_ST_CR_ENCRYPTED_EXTENSIONS 135 
#define  TLS_ST_CR_FINISHED 134 
#define  TLS_ST_CR_HELLO_REQ 133 
#define  TLS_ST_CR_KEY_EXCH 132 
#define  TLS_ST_CR_KEY_UPDATE 131 
#define  TLS_ST_CR_SESSION_TICKET 130 
#define  TLS_ST_CR_SRVR_DONE 129 
#define  TLS_ST_CR_SRVR_HELLO 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 

MSG_PROCESS_RETURN FUNC15(SSL *s, PACKET *pkt)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:
        /* Shouldn't happen */
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_CLIENT_PROCESS_MESSAGE,
                 ERR_R_INTERNAL_ERROR);
        return MSG_PROCESS_ERROR;

    case TLS_ST_CR_SRVR_HELLO:
        return FUNC14(s, pkt);

    case DTLS_ST_CR_HELLO_VERIFY_REQUEST:
        return FUNC1(s, pkt);

    case TLS_ST_CR_CERT:
        return FUNC12(s, pkt);

    case TLS_ST_CR_CERT_VRFY:
        return FUNC3(s, pkt);

    case TLS_ST_CR_CERT_STATUS:
        return FUNC2(s, pkt);

    case TLS_ST_CR_KEY_EXCH:
        return FUNC9(s, pkt);

    case TLS_ST_CR_CERT_REQ:
        return FUNC4(s, pkt);

    case TLS_ST_CR_SRVR_DONE:
        return FUNC13(s, pkt);

    case TLS_ST_CR_CHANGE:
        return FUNC5(s, pkt);

    case TLS_ST_CR_SESSION_TICKET:
        return FUNC11(s, pkt);

    case TLS_ST_CR_FINISHED:
        return FUNC7(s, pkt);

    case TLS_ST_CR_HELLO_REQ:
        return FUNC8(s, pkt);

    case TLS_ST_CR_ENCRYPTED_EXTENSIONS:
        return FUNC6(s, pkt);

    case TLS_ST_CR_KEY_UPDATE:
        return FUNC10(s, pkt);
    }
}