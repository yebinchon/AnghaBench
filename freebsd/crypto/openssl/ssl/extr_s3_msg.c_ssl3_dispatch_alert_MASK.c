#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void (* info_callback ) (TYPE_3__ const*,int,int) ;TYPE_2__* s3; TYPE_1__* ctx; int /*<<< orphan*/  msg_callback_arg; int /*<<< orphan*/  version; int /*<<< orphan*/  (* msg_callback ) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,TYPE_3__ const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  wbio; } ;
struct TYPE_9__ {int alert_dispatch; int* send_alert; } ;
struct TYPE_8__ {void (* info_callback ) (TYPE_3__ const*,int,int) ;} ;
typedef  TYPE_3__ const SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL3_RT_ALERT ; 
 int SSL_CB_WRITE_ALERT ; 
 int FUNC1 (TYPE_3__ const*,int /*<<< orphan*/ ,int*,size_t*,int,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,TYPE_3__ const*,int /*<<< orphan*/ ) ; 

int FUNC3(SSL *s)
{
    int i, j;
    size_t alertlen;
    void (*cb) (const SSL *ssl, int type, int val) = NULL;
    size_t written;

    s->s3->alert_dispatch = 0;
    alertlen = 2;
    i = FUNC1(s, SSL3_RT_ALERT, &s->s3->send_alert[0], &alertlen, 1, 0,
                      &written);
    if (i <= 0) {
        s->s3->alert_dispatch = 1;
    } else {
        /*
         * Alert sent to BIO - now flush. If the message does not get sent due
         * to non-blocking IO, we will not worry too much.
         */
        (void)FUNC0(s->wbio);

        if (s->msg_callback)
            s->msg_callback(1, s->version, SSL3_RT_ALERT, s->s3->send_alert,
                            2, s, s->msg_callback_arg);

        if (s->info_callback != NULL)
            cb = s->info_callback;
        else if (s->ctx->info_callback != NULL)
            cb = s->ctx->info_callback;

        if (cb != NULL) {
            j = (s->s3->send_alert[0] << 8) | s->s3->send_alert[1];
            cb(s, SSL_CB_WRITE_ALERT, j);
        }
    }
    return i;
}