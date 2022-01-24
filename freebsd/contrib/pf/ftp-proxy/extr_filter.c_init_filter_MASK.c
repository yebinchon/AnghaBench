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
struct pf_status {int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETSTATUS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PF_LOG ; 
 int /*<<< orphan*/  PF_LOG_ALL ; 
 int dev ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct pf_status*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char const* qname ; 
 int /*<<< orphan*/  rule_log ; 
 char const* tagname ; 

void
FUNC4(const char *opt_qname, const char *opt_tagname, int opt_verbose)
{
	struct pf_status status;

	qname = opt_qname;
	tagname = opt_tagname;

	if (opt_verbose == 1)
		rule_log = PF_LOG;
	else if (opt_verbose == 2)
		rule_log = PF_LOG_ALL;

	dev = FUNC3("/dev/pf", O_RDWR);	
	if (dev == -1)
		FUNC0(1, "open /dev/pf");
	if (FUNC2(dev, DIOCGETSTATUS, &status) == -1)
		FUNC0(1, "DIOCGETSTATUS");
	if (!status.running)
		FUNC1(1, "pf is disabled");
}