#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  t ;
typedef  enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* _name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ LDNS_RR_TYPE_AXFR ; 
 scalar_t__ LDNS_RR_TYPE_IXFR ; 
 scalar_t__ LDNS_RR_TYPE_MAILA ; 
 scalar_t__ LDNS_RR_TYPE_MAILB ; 
 scalar_t__ LDNS_RR_TYPE_TSIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,char const*,char const*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sldns_rr_classes ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int verbosity ; 

void
FUNC5(enum verbosity_value v, const char* str, uint8_t* name, 
	uint16_t type, uint16_t dclass)
{
	char buf[LDNS_MAX_DOMAINLEN+1];
	char t[12], c[12];
	const char *ts, *cs; 
	if(verbosity < v)
		return;
	FUNC0(name, buf);
	if(type == LDNS_RR_TYPE_TSIG) ts = "TSIG";
	else if(type == LDNS_RR_TYPE_IXFR) ts = "IXFR";
	else if(type == LDNS_RR_TYPE_AXFR) ts = "AXFR";
	else if(type == LDNS_RR_TYPE_MAILB) ts = "MAILB";
	else if(type == LDNS_RR_TYPE_MAILA) ts = "MAILA";
	else if(type == LDNS_RR_TYPE_ANY) ts = "ANY";
	else if(FUNC3(type) && FUNC3(type)->_name)
		ts = FUNC3(type)->_name;
	else {
		FUNC4(t, sizeof(t), "TYPE%d", (int)type);
		ts = t;
	}
	if(FUNC2(sldns_rr_classes, (int)dclass) &&
		FUNC2(sldns_rr_classes, (int)dclass)->name)
		cs = FUNC2(sldns_rr_classes, (int)dclass)->name;
	else {
		FUNC4(c, sizeof(c), "CLASS%d", (int)dclass);
		cs = c;
	}
	FUNC1("%s %s %s %s", str, buf, ts, cs);
}