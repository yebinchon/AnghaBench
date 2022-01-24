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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {struct config_file* cfg; } ;
struct worker {TYPE_1__ env; } ;
struct query_info {scalar_t__ qtype; int /*<<< orphan*/  qname; } ;
struct edns_data {int dummy; } ;
struct config_file {scalar_t__* identity; scalar_t__* version; scalar_t__ hide_trustanchor; scalar_t__ hide_version; scalar_t__ hide_identity; } ;
struct comm_reply {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ LDNS_RR_TYPE_TXT ; 
 int MAXHOSTNAMELEN ; 
 char* PACKAGE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct edns_data*,struct worker*,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct edns_data*,struct worker*,struct comm_reply*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct worker* w, struct query_info* qinfo,
	struct edns_data* edns, struct comm_reply* repinfo, sldns_buffer* pkt)
{
	struct config_file* cfg = w->env.cfg;
	if(qinfo->qtype != LDNS_RR_TYPE_ANY && qinfo->qtype != LDNS_RR_TYPE_TXT)
		return 0;
	if(FUNC4(qinfo->qname, 
		(uint8_t*)"\002id\006server") == 0 ||
		FUNC4(qinfo->qname, 
		(uint8_t*)"\010hostname\004bind") == 0)
	{
		if(cfg->hide_identity) 
			return 0;
		if(cfg->identity==NULL || cfg->identity[0]==0) {
			char buf[MAXHOSTNAMELEN+1];
			if (FUNC2(buf, MAXHOSTNAMELEN) == 0) {
				buf[MAXHOSTNAMELEN] = 0;
				FUNC0(pkt, buf, edns, w, repinfo);
			} else 	{
				FUNC3("gethostname: %s", FUNC5(errno));
				FUNC0(pkt, "no hostname", edns, w, repinfo);
			}
		}
		else 	FUNC0(pkt, cfg->identity, edns, w, repinfo);
		return 1;
	}
	if(FUNC4(qinfo->qname, 
		(uint8_t*)"\007version\006server") == 0 ||
		FUNC4(qinfo->qname, 
		(uint8_t*)"\007version\004bind") == 0)
	{
		if(cfg->hide_version) 
			return 0;
		if(cfg->version==NULL || cfg->version[0]==0)
			FUNC0(pkt, PACKAGE_STRING, edns, w, repinfo);
		else 	FUNC0(pkt, cfg->version, edns, w, repinfo);
		return 1;
	}
	if(FUNC4(qinfo->qname,
		(uint8_t*)"\013trustanchor\007unbound") == 0)
	{
		if(cfg->hide_trustanchor)
			return 0;
		FUNC1(pkt, edns, w, repinfo);
		return 1;
	}

	return 0;
}