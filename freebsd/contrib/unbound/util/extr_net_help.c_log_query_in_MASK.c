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
 scalar_t__ LOG_TAG_QUERYREPLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*,char const*,char const*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sldns_rr_classes ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

void
FUNC6(const char* str, uint8_t* name, uint16_t type, uint16_t dclass)
{
	char buf[LDNS_MAX_DOMAINLEN+1];
	char t[12], c[12];
	const char *ts, *cs; 
	FUNC0(name, buf);
	if(type == LDNS_RR_TYPE_TSIG) ts = "TSIG";
	else if(type == LDNS_RR_TYPE_IXFR) ts = "IXFR";
	else if(type == LDNS_RR_TYPE_AXFR) ts = "AXFR";
	else if(type == LDNS_RR_TYPE_MAILB) ts = "MAILB";
	else if(type == LDNS_RR_TYPE_MAILA) ts = "MAILA";
	else if(type == LDNS_RR_TYPE_ANY) ts = "ANY";
	else if(FUNC4(type) && FUNC4(type)->_name)
		ts = FUNC4(type)->_name;
	else {
		FUNC5(t, sizeof(t), "TYPE%d", (int)type);
		ts = t;
	}
	if(FUNC3(sldns_rr_classes, (int)dclass) &&
		FUNC3(sldns_rr_classes, (int)dclass)->name)
		cs = FUNC3(sldns_rr_classes, (int)dclass)->name;
	else {
		FUNC5(c, sizeof(c), "CLASS%d", (int)dclass);
		cs = c;
	}
	if(LOG_TAG_QUERYREPLY)
		FUNC2("%s %s %s %s", str, buf, ts, cs);
	else	FUNC1("%s %s %s %s", str, buf, ts, cs);
}