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
struct auth_xfer {TYPE_1__* task_transfer; } ;
struct auth_chunk {int /*<<< orphan*/  len; scalar_t__ data; struct auth_chunk* next; } ;
struct TYPE_2__ {struct auth_chunk* chunks_first; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct auth_xfer* xfr, const char* fname)
{
	FILE* out;
	struct auth_chunk* p;
	out = FUNC1(fname, "w");
	if(!out) {
		FUNC2("could not open %s: %s", fname, FUNC3(errno));
		return 0;
	}
	for(p = xfr->task_transfer->chunks_first; p ; p = p->next) {
		if(!FUNC4(out, (char*)p->data, p->len)) {
			FUNC2("could not write http download to %s", fname);
			FUNC0(out);
			return 0;
		}
	}
	FUNC0(out);
	return 1;
}