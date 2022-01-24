#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pqueue ;
struct TYPE_17__ {scalar_t__ data; } ;
typedef  TYPE_5__ pitem ;
struct TYPE_13__ {scalar_t__ buf; } ;
struct TYPE_20__ {TYPE_1__ rbuf; } ;
struct TYPE_16__ {int /*<<< orphan*/ * q; } ;
struct TYPE_15__ {int /*<<< orphan*/ * q; } ;
struct TYPE_14__ {int /*<<< orphan*/ * q; } ;
struct TYPE_19__ {TYPE_4__ buffered_app_data; TYPE_3__ processed_rcds; TYPE_2__ unprocessed_rcds; } ;
struct TYPE_18__ {TYPE_7__* d; } ;
typedef  TYPE_6__ RECORD_LAYER ;
typedef  TYPE_7__ DTLS_RECORD_LAYER ;
typedef  TYPE_8__ DTLS1_RECORD_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(RECORD_LAYER *rl)
{
    DTLS_RECORD_LAYER *d;
    pitem *item = NULL;
    DTLS1_RECORD_DATA *rdata;
    pqueue *unprocessed_rcds;
    pqueue *processed_rcds;
    pqueue *buffered_app_data;

    d = rl->d;

    while ((item = FUNC3(d->unprocessed_rcds.q)) != NULL) {
        rdata = (DTLS1_RECORD_DATA *)item->data;
        FUNC0(rdata->rbuf.buf);
        FUNC0(item->data);
        FUNC2(item);
    }

    while ((item = FUNC3(d->processed_rcds.q)) != NULL) {
        rdata = (DTLS1_RECORD_DATA *)item->data;
        FUNC0(rdata->rbuf.buf);
        FUNC0(item->data);
        FUNC2(item);
    }

    while ((item = FUNC3(d->buffered_app_data.q)) != NULL) {
        rdata = (DTLS1_RECORD_DATA *)item->data;
        FUNC0(rdata->rbuf.buf);
        FUNC0(item->data);
        FUNC2(item);
    }

    unprocessed_rcds = d->unprocessed_rcds.q;
    processed_rcds = d->processed_rcds.q;
    buffered_app_data = d->buffered_app_data.q;
    FUNC1(d, 0, sizeof(*d));
    d->unprocessed_rcds.q = unprocessed_rcds;
    d->processed_rcds.q = processed_rcds;
    d->buffered_app_data.q = buffered_app_data;
}