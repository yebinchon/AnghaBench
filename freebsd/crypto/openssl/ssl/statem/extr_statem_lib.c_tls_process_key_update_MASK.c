#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int key_update; int /*<<< orphan*/  rlayer; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_FINISHED_READING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_KEY_UPDATE ; 
 unsigned int SSL_KEY_UPDATE_NOT_REQUESTED ; 
 unsigned int SSL_KEY_UPDATE_REQUESTED ; 
 int /*<<< orphan*/  SSL_R_BAD_KEY_UPDATE ; 
 int /*<<< orphan*/  SSL_R_NOT_ON_RECORD_BOUNDARY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

MSG_PROCESS_RETURN FUNC5(SSL *s, PACKET *pkt)
{
    unsigned int updatetype;

    /*
     * A KeyUpdate message signals a key change so the end of the message must
     * be on a record boundary.
     */
    if (FUNC2(&s->rlayer)) {
        FUNC3(s, SSL_AD_UNEXPECTED_MESSAGE, SSL_F_TLS_PROCESS_KEY_UPDATE,
                 SSL_R_NOT_ON_RECORD_BOUNDARY);
        return MSG_PROCESS_ERROR;
    }

    if (!FUNC0(pkt, &updatetype)
            || FUNC1(pkt) != 0) {
        FUNC3(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_KEY_UPDATE,
                 SSL_R_BAD_KEY_UPDATE);
        return MSG_PROCESS_ERROR;
    }

    /*
     * There are only two defined key update types. Fail if we get a value we
     * didn't recognise.
     */
    if (updatetype != SSL_KEY_UPDATE_NOT_REQUESTED
            && updatetype != SSL_KEY_UPDATE_REQUESTED) {
        FUNC3(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_KEY_UPDATE,
                 SSL_R_BAD_KEY_UPDATE);
        return MSG_PROCESS_ERROR;
    }

    /*
     * If we get a request for us to update our sending keys too then, we need
     * to additionally send a KeyUpdate message. However that message should
     * not also request an update (otherwise we get into an infinite loop).
     */
    if (updatetype == SSL_KEY_UPDATE_REQUESTED)
        s->key_update = SSL_KEY_UPDATE_NOT_REQUESTED;

    if (!FUNC4(s, 0)) {
        /* SSLfatal() already called */
        return MSG_PROCESS_ERROR;
    }

    return MSG_PROCESS_FINISHED_READING;
}