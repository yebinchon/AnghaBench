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
struct pcap_dag {int /*<<< orphan*/ * dag_ref; int /*<<< orphan*/  dag_stream; } ;
struct TYPE_5__ {int fd; struct pcap_dag* priv; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(pcap_t *p)
{
	struct pcap_dag *pd = p->priv;

	if(FUNC2(p->fd, pd->dag_stream) < 0)
		FUNC4(stderr,"dag_stop_stream: %s\n", FUNC6(errno));

	if(FUNC1(p->fd, pd->dag_stream) < 0)
		FUNC4(stderr,"dag_detach_stream: %s\n", FUNC6(errno));

	if(pd->dag_ref != NULL) {
		FUNC0(pd->dag_ref);
		p->fd = -1;
		pd->dag_ref = NULL;
	}
	FUNC3(p);
	FUNC5(p);
	/* Note: don't need to call close(p->fd) or dag_close(p->fd) as dag_config_dispose(pd->dag_ref) does this. */
}