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
struct serviced_query {int qbuflen; int qbuf; scalar_t__ dnssec; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; int /*<<< orphan*/  opt_list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int 
FUNC5(const void* key1, const void* key2)
{
	struct serviced_query* q1 = (struct serviced_query*)key1;
	struct serviced_query* q2 = (struct serviced_query*)key2;
	int r;
	if(q1->qbuflen < q2->qbuflen)
		return -1;
	if(q1->qbuflen > q2->qbuflen)
		return 1;
	FUNC1(q1->qbuflen == q2->qbuflen);
	FUNC1(q1->qbuflen >= 15 /* 10 header, root, type, class */);
	/* alternate casing of qname is still the same query */
	if((r = FUNC2(q1->qbuf, q2->qbuf, 10)) != 0)
		return r;
	if((r = FUNC2(q1->qbuf+q1->qbuflen-4, q2->qbuf+q2->qbuflen-4, 4)) != 0)
		return r;
	if(q1->dnssec != q2->dnssec) {
		if(q1->dnssec < q2->dnssec)
			return -1;
		return 1;
	}
	if((r = FUNC3(q1->qbuf+10, q2->qbuf+10)) != 0)
		return r;
	if((r = FUNC0(q1->opt_list, q2->opt_list)) != 0)
		return r;
	return FUNC4(&q1->addr, q1->addrlen, &q2->addr, q2->addrlen);
}