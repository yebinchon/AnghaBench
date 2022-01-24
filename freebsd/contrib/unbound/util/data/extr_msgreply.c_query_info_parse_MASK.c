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
struct query_info {int /*<<< orphan*/ * local_alias; void* qclass; void* qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_HEADER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_PACKET_NOTIFY ; 
 scalar_t__ LDNS_PACKET_QUERY ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 

int 
FUNC10(struct query_info* m, sldns_buffer* query)
{
	uint8_t* q = FUNC3(query);
	/* minimum size: header + \0 + qtype + qclass */
	if(FUNC5(query) < LDNS_HEADER_SIZE + 5)
		return 0;
	if((FUNC0(q) != LDNS_PACKET_QUERY && FUNC0(q) !=
		LDNS_PACKET_NOTIFY) || FUNC1(q) != 1 ||
		FUNC6(query) != 0)
		return 0;
	FUNC9(query, LDNS_HEADER_SIZE);
	m->qname = FUNC4(query);
	if((m->qname_len = FUNC2(query)) == 0)
		return 0; /* parse error */
	if(FUNC8(query) < 4)
		return 0; /* need qtype, qclass */
	m->qtype = FUNC7(query);
	m->qclass = FUNC7(query);
	m->local_alias = NULL;
	return 1;
}