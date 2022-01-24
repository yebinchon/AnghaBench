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
typedef  int /*<<< orphan*/  t ;
struct TYPE_2__ {int /*<<< orphan*/  qname; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; } ;
struct module_qstate {struct config_strlist* errinf; TYPE_1__ qinfo; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,...) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 

char* FUNC7(struct module_qstate* qstate)
{
	char buf[20480];
	char* p = buf;
	size_t left = sizeof(buf);
	struct config_strlist* s;
	char dname[LDNS_MAX_DOMAINLEN+1];
	char t[16], c[16];
	FUNC3(qstate->qinfo.qtype, t, sizeof(t));
	FUNC2(qstate->qinfo.qclass, c, sizeof(c));
	FUNC0(qstate->qinfo.qname, dname);
	FUNC4(p, left, "validation failure <%s %s %s>:", dname, t, c);
	left -= FUNC6(p); p += FUNC6(p);
	if(!qstate->errinf)
		FUNC4(p, left, " misc failure");
	else for(s=qstate->errinf; s; s=s->next) {
		FUNC4(p, left, " %s", s->str);
		left -= FUNC6(p); p += FUNC6(p);
	}
	p = FUNC5(buf);
	if(!p)
		FUNC1("malloc failure in errinf_to_str");
	return p;
}