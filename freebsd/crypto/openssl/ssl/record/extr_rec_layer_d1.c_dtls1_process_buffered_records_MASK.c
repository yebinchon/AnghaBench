#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_16__ ;
typedef  struct TYPE_20__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pitem ;
struct TYPE_21__ {TYPE_2__* d; int /*<<< orphan*/  rrec; } ;
struct TYPE_25__ {TYPE_16__ rlayer; } ;
struct TYPE_24__ {scalar_t__ length; } ;
struct TYPE_22__ {scalar_t__ epoch; int /*<<< orphan*/  q; } ;
struct TYPE_20__ {scalar_t__ epoch; } ;
struct TYPE_23__ {scalar_t__ r_epoch; TYPE_1__ unprocessed_rcds; TYPE_13__ processed_rcds; } ;
typedef  TYPE_3__ SSL3_RECORD ;
typedef  int /*<<< orphan*/  SSL3_BUFFER ;
typedef  TYPE_4__ SSL ;
typedef  int /*<<< orphan*/  DTLS1_BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_16__*) ; 
 TYPE_3__* FUNC2 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_16__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_DTLS1_PROCESS_BUFFERED_RECORDS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*,TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,TYPE_3__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(SSL *s)
{
    pitem *item;
    SSL3_BUFFER *rb;
    SSL3_RECORD *rr;
    DTLS1_BITMAP *bitmap;
    unsigned int is_next_epoch;
    int replayok = 1;

    item = FUNC14(s->rlayer.d->unprocessed_rcds.q);
    if (item) {
        /* Check if epoch is current. */
        if (s->rlayer.d->unprocessed_rcds.epoch != s->rlayer.d->r_epoch)
            return 1;         /* Nothing to do. */

        rr = FUNC2(&s->rlayer);

        rb = FUNC1(&s->rlayer);

        if (FUNC4(rb) > 0) {
            /*
             * We've still got data from the current packet to read. There could
             * be a record from the new epoch in it - so don't overwrite it
             * with the unprocessed records yet (we'll do it when we've
             * finished reading the current packet).
             */
            return 1;
        }

        /* Process all the records. */
        while (FUNC14(s->rlayer.d->unprocessed_rcds.q)) {
            FUNC10(s);
            bitmap = FUNC9(s, rr, &is_next_epoch);
            if (bitmap == NULL) {
                /*
                 * Should not happen. This will only ever be NULL when the
                 * current record is from a different epoch. But that cannot
                 * be the case because we already checked the epoch above
                 */
                 FUNC7(s, SSL_AD_INTERNAL_ERROR,
                          SSL_F_DTLS1_PROCESS_BUFFERED_RECORDS,
                          ERR_R_INTERNAL_ERROR);
                 return 0;
            }
#ifndef OPENSSL_NO_SCTP
            /* Only do replay check if no SCTP bio */
            if (!FUNC0(FUNC6(s)))
#endif
            {
                /*
                 * Check whether this is a repeat, or aged record. We did this
                 * check once already when we first received the record - but
                 * we might have updated the window since then due to
                 * records we subsequently processed.
                 */
                replayok = FUNC12(s, bitmap);
            }

            if (!replayok || !FUNC11(s, bitmap)) {
                if (FUNC13(s)) {
                    /* dtls1_process_record called SSLfatal() */
                    return -1;
                }
                /* dump this record */
                rr->length = 0;
                FUNC3(&s->rlayer);
                continue;
            }

            if (FUNC8(s, &(s->rlayer.d->processed_rcds),
                    FUNC5(s->rlayer.rrec)) < 0) {
                /* SSLfatal() already called */
                return 0;
            }
        }
    }

    /*
     * sync epoch numbers once all the unprocessed records have been
     * processed
     */
    s->rlayer.d->processed_rcds.epoch = s->rlayer.d->r_epoch;
    s->rlayer.d->unprocessed_rcds.epoch = s->rlayer.d->r_epoch + 1;

    return 1;
}