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
typedef  int /*<<< orphan*/  uint8_t ;
struct query_info {int /*<<< orphan*/ * qname; } ;
struct auth_zone {int dummy; } ;
struct auth_data {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct auth_data* FUNC0 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static struct auth_data*
FUNC5(struct auth_zone* z, struct query_info* qinfo,
	struct auth_data* n)
{
	uint8_t* nm;
	size_t nmlen;
	if(n) {
		nm = FUNC2(qinfo->qname, n->name);
	} else {
		nm = qinfo->qname;
	}
	FUNC1(nm, &nmlen);
	n = FUNC0(z, nm, nmlen);
	/* delete labels and go up on name */
	while(!n) {
		if(FUNC3(nm))
			return NULL; /* cannot go up */
		FUNC4(&nm, &nmlen);
		n = FUNC0(z, nm, nmlen);
	}
	return n;
}