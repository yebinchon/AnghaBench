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
struct TYPE_6__ {size_t wpend_tot; unsigned char const* wpend_buf; int wpend_type; int numwpipes; size_t wpend_ret; int /*<<< orphan*/ * wbuf; } ;
struct TYPE_7__ {int mode; TYPE_1__ rlayer; int /*<<< orphan*/  rwstate; int /*<<< orphan*/ * wbio; } ;
typedef  int /*<<< orphan*/  SSL3_BUFFER ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_WRITE_PENDING ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ; 
 int /*<<< orphan*/  SSL_NOTHING ; 
 int /*<<< orphan*/  SSL_R_BAD_WRITE_RETRY ; 
 int /*<<< orphan*/  SSL_R_BIO_NOT_SET ; 
 int /*<<< orphan*/  SSL_WRITING ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(SSL *s, int type, const unsigned char *buf, size_t len,
                       size_t *written)
{
    int i;
    SSL3_BUFFER *wb = s->rlayer.wbuf;
    size_t currbuf = 0;
    size_t tmpwrit = 0;

    if ((s->rlayer.wpend_tot > len)
        || (!(s->mode & SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER)
            && (s->rlayer.wpend_buf != buf))
        || (s->rlayer.wpend_type != type)) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_PENDING,
                 SSL_R_BAD_WRITE_RETRY);
        return -1;
    }

    for (;;) {
        /* Loop until we find a buffer we haven't written out yet */
        if (FUNC3(&wb[currbuf]) == 0
            && currbuf < s->rlayer.numwpipes - 1) {
            currbuf++;
            continue;
        }
        FUNC9();
        if (s->wbio != NULL) {
            s->rwstate = SSL_WRITING;
            /* TODO(size_t): Convert this call */
            i = FUNC0(s->wbio, (char *)
                          &(FUNC2(&wb[currbuf])
                            [FUNC4(&wb[currbuf])]),
                          (unsigned int)FUNC3(&wb[currbuf]));
            if (i >= 0)
                tmpwrit = i;
        } else {
            FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_PENDING,
                     SSL_R_BIO_NOT_SET);
            i = -1;
        }
        if (i > 0 && tmpwrit == FUNC3(&wb[currbuf])) {
            FUNC5(&wb[currbuf], 0);
            FUNC1(&wb[currbuf], tmpwrit);
            if (currbuf + 1 < s->rlayer.numwpipes)
                continue;
            s->rwstate = SSL_NOTHING;
            *written = s->rlayer.wpend_ret;
            return 1;
        } else if (i <= 0) {
            if (FUNC7(s)) {
                /*
                 * For DTLS, just drop it. That's kind of the whole point in
                 * using a datagram service
                 */
                FUNC5(&wb[currbuf], 0);
            }
            return i;
        }
        FUNC1(&wb[currbuf], tmpwrit);
        FUNC6(&wb[currbuf], tmpwrit);
    }
}