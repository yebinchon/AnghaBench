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
struct ctx_query {TYPE_1__* w; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ctx_query*,int,int /*<<< orphan*/ *,int,char*,int) ; 

void
FUNC2(void* arg, int rcode, sldns_buffer* buf, enum sec_status s,
	char* why_bogus, int was_ratelimited)
{
	struct ctx_query* q = (struct ctx_query*)arg;
	/* fg query is done; exit comm base */
	FUNC0(q->w->base);

	FUNC1(q, rcode, buf, s, why_bogus, was_ratelimited);
}