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
struct rsocket {int dummy; } ;
struct rs_svc {int cnt; int size; struct rsocket** rss; } ;

/* Variables and functions */
 int FUNC0 (struct rs_svc*,int) ; 

__attribute__((used)) static int FUNC1(struct rs_svc *svc, struct rsocket *rs)
{
	int ret;

	if (svc->cnt >= svc->size - 1) {
		ret = FUNC0(svc, 4);
		if (ret)
			return ret;
	}

	svc->rss[++svc->cnt] = rs;
	return 0;
}