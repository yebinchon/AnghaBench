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
struct delegpt {int dummy; } ;
struct config_stub {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct delegpt* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static struct delegpt* 
FUNC4(struct config_stub* s)
{
	struct delegpt* dp;
	uint8_t* dname;
	size_t dname_len;
	if(!s->name) {
		FUNC2("forward zone without a name (use name \".\" to forward everything)");
		return NULL;
	}
	dname = FUNC3(s->name, &dname_len);
	if(!dname) {
		FUNC2("cannot parse forward zone name %s", s->name);
		return NULL;
	}
	if(!(dp=FUNC0(dname))) {
		FUNC1(dname);
		FUNC2("out of memory");
		return NULL;
	}
	FUNC1(dname);
	return dp;
}