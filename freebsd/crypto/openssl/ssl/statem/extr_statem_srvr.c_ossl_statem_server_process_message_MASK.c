#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int hand_state; } ;
struct TYPE_14__ {TYPE_2__ statem; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  TYPE_2__ OSSL_STATEM ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_OSSL_STATEM_SERVER_PROCESS_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TLS_ST_SR_CERT 136 
#define  TLS_ST_SR_CERT_VRFY 135 
#define  TLS_ST_SR_CHANGE 134 
#define  TLS_ST_SR_CLNT_HELLO 133 
#define  TLS_ST_SR_END_OF_EARLY_DATA 132 
#define  TLS_ST_SR_FINISHED 131 
#define  TLS_ST_SR_KEY_EXCH 130 
#define  TLS_ST_SR_KEY_UPDATE 129 
#define  TLS_ST_SR_NEXT_PROTO 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

MSG_PROCESS_RETURN FUNC10(SSL *s, PACKET *pkt)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:
        /* Shouldn't happen */
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_SERVER_PROCESS_MESSAGE,
                 ERR_R_INTERNAL_ERROR);
        return MSG_PROCESS_ERROR;

    case TLS_ST_SR_CLNT_HELLO:
        return FUNC4(s, pkt);

    case TLS_ST_SR_END_OF_EARLY_DATA:
        return FUNC6(s, pkt);

    case TLS_ST_SR_CERT:
        return FUNC3(s, pkt);

    case TLS_ST_SR_KEY_EXCH:
        return FUNC5(s, pkt);

    case TLS_ST_SR_CERT_VRFY:
        return FUNC1(s, pkt);

#ifndef OPENSSL_NO_NEXTPROTONEG
    case TLS_ST_SR_NEXT_PROTO:
        return FUNC9(s, pkt);
#endif

    case TLS_ST_SR_CHANGE:
        return FUNC2(s, pkt);

    case TLS_ST_SR_FINISHED:
        return FUNC7(s, pkt);

    case TLS_ST_SR_KEY_UPDATE:
        return FUNC8(s, pkt);

    }
}