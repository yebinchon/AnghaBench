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
struct iter_forwards {int dummy; } ;
struct config_stub {int /*<<< orphan*/  name; struct config_stub* next; } ;
struct config_file {struct config_stub* stubs; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_forwards*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int
FUNC4(struct iter_forwards* fwd, struct config_file* cfg)
{
	struct config_stub* s;
	uint8_t* dname;
	size_t dname_len;
	for(s = cfg->stubs; s; s = s->next) {
		if(!s->name) continue;
		dname = FUNC3(s->name, &dname_len);
		if(!dname) {
			FUNC2("cannot parse stub name '%s'", s->name);
			return 0;
		}
		if(!FUNC1(fwd, LDNS_RR_CLASS_IN, dname)) {
			FUNC0(dname);
			FUNC2("out of memory");
			return 0;
		}
		FUNC0(dname);
	}
	return 1;
}