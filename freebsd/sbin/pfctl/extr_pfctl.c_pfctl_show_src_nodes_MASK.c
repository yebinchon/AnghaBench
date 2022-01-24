#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pfioc_src_nodes {unsigned int psn_len; char* psn_buf; struct pf_src_node* psn_src_nodes; } ;
struct pf_src_node {int dummy; } ;
typedef  int /*<<< orphan*/  psn ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETSRCNODES ; 
 int PF_OPT_SHOWALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct pfioc_src_nodes*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfioc_src_nodes*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pf_src_node*,int) ; 
 char* FUNC6 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(int dev, int opts)
{
	struct pfioc_src_nodes psn;
	struct pf_src_node *p;
	char *inbuf = NULL, *newinbuf = NULL;
	unsigned int len = 0;
	int i;

	FUNC3(&psn, 0, sizeof(psn));
	for (;;) {
		psn.psn_len = len;
		if (len) {
			newinbuf = FUNC6(inbuf, len);
			if (newinbuf == NULL)
				FUNC0(1, "realloc");
			psn.psn_buf = inbuf = newinbuf;
		}
		if (FUNC2(dev, DIOCGETSRCNODES, &psn) < 0) {
			FUNC7("DIOCGETSRCNODES");
			FUNC1(inbuf);
			return (-1);
		}
		if (psn.psn_len + sizeof(struct pfioc_src_nodes) < len)
			break;
		if (len == 0 && psn.psn_len == 0)
			goto done;
		if (len == 0 && psn.psn_len != 0)
			len = psn.psn_len;
		if (psn.psn_len == 0)
			goto done;	/* no src_nodes */
		len *= 2;
	}
	p = psn.psn_src_nodes;
	if (psn.psn_len > 0 && (opts & PF_OPT_SHOWALL))
		FUNC4("SOURCE TRACKING NODES:");
	for (i = 0; i < psn.psn_len; i += sizeof(*p)) {
		FUNC5(p, opts);
		p++;
	}
done:
	FUNC1(inbuf);
	return (0);
}