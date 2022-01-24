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
struct query_info {scalar_t__ qname_len; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qname; int /*<<< orphan*/  qtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int 
FUNC3(void* m1, void* m2)
{
	struct query_info* msg1 = (struct query_info*)m1;
	struct query_info* msg2 = (struct query_info*)m2;
	int mc;
	/* from most different to least different for speed */
	FUNC0(msg1->qtype, msg2->qtype);
	if((mc = FUNC2(msg1->qname, msg2->qname)) != 0)
		return mc;
	FUNC1(msg1->qname_len == msg2->qname_len);
	FUNC0(msg1->qclass, msg2->qclass);
	return 0;
#undef COMPARE_IT
}