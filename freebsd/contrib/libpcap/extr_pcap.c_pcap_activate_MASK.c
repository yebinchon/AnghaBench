#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ nonblock; } ;
struct TYPE_10__ {int (* activate_op ) (TYPE_2__*) ;int (* setnonblock_op ) (TYPE_2__*,int) ;int activated; char* errbuf; int /*<<< orphan*/  (* cleanup_op ) (TYPE_2__*) ;TYPE_1__ opt; } ;
typedef  TYPE_2__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_ERROR_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int
FUNC7(pcap_t *p)
{
	int status;

	/*
	 * Catch attempts to re-activate an already-activated
	 * pcap_t; this should, for example, catch code that
	 * calls pcap_open_live() followed by pcap_activate(),
	 * as some code that showed up in a Stack Exchange
	 * question did.
	 */
	if (FUNC1(p))
		return (PCAP_ERROR_ACTIVATED);
	status = p->activate_op(p);
	if (status >= 0) {
		/*
		 * If somebody requested non-blocking mode before
		 * calling pcap_activate(), turn it on now.
		 */
		if (p->opt.nonblock) {
			status = p->setnonblock_op(p, 1);
			if (status < 0) {
				/*
				 * Failed.  Undo everything done by
				 * the activate operation.
				 */
				p->cleanup_op(p);
				FUNC0(p);
				return (status);
			}
		}
		p->activated = 1;
	} else {
		if (p->errbuf[0] == '\0') {
			/*
			 * No error message supplied by the activate routine;
			 * for the benefit of programs that don't specially
			 * handle errors other than PCAP_ERROR, return the
			 * error message corresponding to the status.
			 */
			FUNC2(p->errbuf, PCAP_ERRBUF_SIZE, "%s",
			    FUNC3(status));
		}

		/*
		 * Undo any operation pointer setting, etc. done by
		 * the activate operation.
		 */
		FUNC0(p);
	}
	return (status);
}