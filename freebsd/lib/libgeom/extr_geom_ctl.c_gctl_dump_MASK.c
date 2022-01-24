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
typedef  int u_char ;
struct gctl_req_arg {char* name; int nlen; int flag; int len; scalar_t__ value; } ;
struct gctl_req {char* error; unsigned int narg; struct gctl_req_arg* arg; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int GCTL_PARAM_ASCII ; 
 int GCTL_PARAM_RD ; 
 int GCTL_PARAM_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC2(struct gctl_req *req, FILE *f)
{
	unsigned int i;
	int j;
	struct gctl_req_arg *ap;

	if (req == NULL) {
		FUNC1(f, "Dump of gctl request at NULL\n");
		return;
	}
	FUNC1(f, "Dump of gctl request at %p:\n", req);
	if (req->error != NULL)
		FUNC1(f, "  error:\t\"%s\"\n", req->error);
	else
		FUNC1(f, "  error:\tNULL\n");
	for (i = 0; i < req->narg; i++) {
		ap = &req->arg[i];
		FUNC1(f, "  param:\t\"%s\" (%d)", ap->name, ap->nlen);
		FUNC1(f, " [%s%s",
		    ap->flag & GCTL_PARAM_RD ? "R" : "",
		    ap->flag & GCTL_PARAM_WR ? "W" : "");
		FUNC0(f);
		if (ap->flag & GCTL_PARAM_ASCII)
			FUNC1(f, "%d] = \"%s\"", ap->len, (char *)ap->value);
		else if (ap->len > 0) {
			FUNC1(f, "%d] = ", ap->len);
			FUNC0(f);
			for (j = 0; j < ap->len; j++) {
				FUNC1(f, " %02x", ((u_char *)ap->value)[j]);
			}
		} else {
			FUNC1(f, "0] = %p", ap->value);
		}
		FUNC1(f, "\n");
	}
}