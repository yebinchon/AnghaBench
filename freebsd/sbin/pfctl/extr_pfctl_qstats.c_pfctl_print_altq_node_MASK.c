#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* qname; int qid; char* ifname; scalar_t__ ifbandwidth; } ;
struct pf_altq_node {struct pf_altq_node* next; struct pf_altq_node* children; TYPE_1__ altq; } ;

/* Variables and functions */
 int PF_OPT_DEBUG ; 
 int PF_OPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int,struct pf_altq_node const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (double) ; 

void
FUNC4(int dev, const struct pf_altq_node *node,
    unsigned int level, int opts)
{
	const struct pf_altq_node	*child;

	if (node == NULL)
		return;

	FUNC1(&node->altq, level, NULL, NULL);

	if (node->children != NULL) {
		FUNC2("{");
		for (child = node->children; child != NULL;
		    child = child->next) {
			FUNC2("%s", child->altq.qname);
			if (child->next != NULL)
				FUNC2(", ");
		}
		FUNC2("}");
	}
	FUNC2("\n");

	if (opts & PF_OPT_VERBOSE)
		FUNC0(dev, node);

	if (opts & PF_OPT_DEBUG)
		FUNC2("  [ qid=%u ifname=%s ifbandwidth=%s ]\n",
		    node->altq.qid, node->altq.ifname,
		    FUNC3((double)(node->altq.ifbandwidth)));

	for (child = node->children; child != NULL;
	    child = child->next)
		FUNC4(dev, child, level + 1, opts);
}