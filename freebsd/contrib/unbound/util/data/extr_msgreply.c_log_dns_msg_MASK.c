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
struct reply_info {int /*<<< orphan*/  flags; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 struct regional* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct regional*) ; 
 int /*<<< orphan*/  FUNC4 (struct query_info*,struct reply_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct regional*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC10(const char* str, struct query_info* qinfo, struct reply_info* rep)
{
	/* not particularly fast but flexible, make wireformat and print */
	sldns_buffer* buf = FUNC8(65535);
	struct regional* region = FUNC2();
	if(!FUNC4(qinfo, rep, 0, rep->flags, buf, 0, 
		region, 65535, 1)) {
		FUNC1("%s: log_dns_msg: out of memory", str);
	} else {
		char* s = FUNC9(FUNC5(buf),
			FUNC7(buf));
		if(!s) {
			FUNC1("%s: log_dns_msg: ldns tostr failed", str);
		} else {
			FUNC1("%s %s", str, s);
		}
		FUNC0(s);
	}
	FUNC6(buf);
	FUNC3(region);
}