#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int fd; int selectable_fd; int /*<<< orphan*/  fcode; scalar_t__ tstamp_precision_count; int /*<<< orphan*/ * tstamp_precision_list; scalar_t__ tstamp_type_count; int /*<<< orphan*/ * tstamp_type_list; scalar_t__ dlt_count; int /*<<< orphan*/ * dlt_list; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(pcap_t *p)
{
	if (p->buffer != NULL) {
		FUNC1(p->buffer);
		p->buffer = NULL;
	}
	if (p->dlt_list != NULL) {
		FUNC1(p->dlt_list);
		p->dlt_list = NULL;
		p->dlt_count = 0;
	}
	if (p->tstamp_type_list != NULL) {
		FUNC1(p->tstamp_type_list);
		p->tstamp_type_list = NULL;
		p->tstamp_type_count = 0;
	}
	if (p->tstamp_precision_list != NULL) {
		FUNC1(p->tstamp_precision_list);
		p->tstamp_precision_list = NULL;
		p->tstamp_precision_count = 0;
	}
	FUNC2(&p->fcode);
#if !defined(_WIN32) && !defined(MSDOS)
	if (p->fd >= 0) {
		FUNC0(p->fd);
		p->fd = -1;
	}
	p->selectable_fd = -1;
#endif
}