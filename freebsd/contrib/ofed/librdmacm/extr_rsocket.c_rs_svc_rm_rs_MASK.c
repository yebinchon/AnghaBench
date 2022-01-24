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
struct rs_svc {size_t cnt; int context_size; scalar_t__ contexts; int /*<<< orphan*/ * rss; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int FUNC1 (struct rs_svc*,struct rsocket*) ; 

__attribute__((used)) static int FUNC2(struct rs_svc *svc, struct rsocket *rs)
{
	int i;

	if ((i = FUNC1(svc, rs)) >= 0) {
		svc->rss[i] = svc->rss[svc->cnt];
		FUNC0(svc->contexts + i * svc->context_size,
		       svc->contexts + svc->cnt * svc->context_size,
		       svc->context_size);
		svc->cnt--;
		return 0;
	}
	return EBADF;
}