#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORK_STATE ;
struct TYPE_8__ {int hand_state; } ;
struct TYPE_7__ {TYPE_2__ statem; } ;
typedef  TYPE_1__ SSL ;
typedef  TYPE_2__ OSSL_STATEM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_OSSL_STATEM_SERVER_POST_PROCESS_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TLS_ST_SR_CLNT_HELLO 129 
#define  TLS_ST_SR_KEY_EXCH 128 
 int /*<<< orphan*/  WORK_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

WORK_STATE FUNC3(SSL *s, WORK_STATE wst)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:
        /* Shouldn't happen */
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_SERVER_POST_PROCESS_MESSAGE,
                 ERR_R_INTERNAL_ERROR);
        return WORK_ERROR;

    case TLS_ST_SR_CLNT_HELLO:
        return FUNC1(s, wst);

    case TLS_ST_SR_KEY_EXCH:
        return FUNC2(s, wst);
    }
}