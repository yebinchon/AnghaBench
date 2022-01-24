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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct query_info {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  q ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC1 (struct query_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct query_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

int
FUNC10(sldns_buffer* pkt, uint32_t *serial)
{
	struct query_info q;
	uint16_t rdlen;
	FUNC1(&q, 0, sizeof(q));
	FUNC8(pkt, 0);
	if(!FUNC3(&q, pkt)) return 0;
	if(FUNC0(FUNC4(pkt)) == 0) return 0;
	/* skip name of RR in answer section */
	if(FUNC7(pkt) < 1) return 0;
	if(FUNC2(pkt) == 0) return 0;
	/* check type */
	if(FUNC7(pkt) < 10 /* type,class,ttl,rdatalen*/)
		return 0;
	if(FUNC5(pkt) != LDNS_RR_TYPE_SOA) return 0;
	FUNC9(pkt, 2); /* class */
	FUNC9(pkt, 4); /* ttl */
	rdlen = FUNC5(pkt); /* rdatalen */
	if(FUNC7(pkt) < rdlen) return 0;
	if(rdlen < 22) return 0; /* bad soa length */
	FUNC9(pkt, (ssize_t)(rdlen-20));
	*serial = FUNC6(pkt);
	/* return true when has serial in answer section */
	return 1;
}