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
struct pfctl {int* timeout; int* timeout_set; int opts; } ;
struct TYPE_2__ {size_t timeout; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int PFCTL_FLAG_OPTION ; 
 int PF_OPT_VERBOSE ; 
 int loadopt ; 
 TYPE_1__* pf_timeouts ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(struct pfctl *pf, const char *opt, int seconds, int quiet)
{
	int i;

	if ((loadopt & PFCTL_FLAG_OPTION) == 0)
		return (0);

	for (i = 0; pf_timeouts[i].name; i++) {
		if (FUNC1(opt, pf_timeouts[i].name) == 0) {
			pf->timeout[pf_timeouts[i].timeout] = seconds;
			pf->timeout_set[pf_timeouts[i].timeout] = 1;
			break;
		}
	}

	if (pf_timeouts[i].name == NULL) {
		FUNC2("Bad timeout name.");
		return (1);
	}


	if (pf->opts & PF_OPT_VERBOSE && ! quiet)
		FUNC0("set timeout %s %d\n", opt, seconds);

	return (0);
}