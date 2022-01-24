#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pcap_t ;
struct TYPE_4__ {int /*<<< orphan*/  pid; int /*<<< orphan*/ * p; struct TYPE_4__* next; } ;
typedef  TYPE_1__ pcap_dag_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atexit_handler ; 
 int atexit_handler_installed ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__* pcap_dags ; 

__attribute__((used)) static int
FUNC3(pcap_t *p)
{
	pcap_dag_node_t *node = NULL;

	if ((node = FUNC2(sizeof(pcap_dag_node_t))) == NULL) {
		return -1;
	}

	if (!atexit_handler_installed) {
		FUNC0(atexit_handler);
		atexit_handler_installed = 1;
	}

	node->next = pcap_dags;
	node->p = p;
	node->pid = FUNC1();

	pcap_dags = node;

	return 0;
}