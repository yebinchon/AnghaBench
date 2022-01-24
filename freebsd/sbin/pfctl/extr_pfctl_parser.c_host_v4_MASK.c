#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * addr32; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct TYPE_7__ {TYPE_2__ a; } ;
struct TYPE_8__ {TYPE_3__ v; } ;
struct node_host {struct node_host* tail; int /*<<< orphan*/ * next; TYPE_4__ addr; int /*<<< orphan*/  af; int /*<<< orphan*/ * ifname; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  ina ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 struct node_host* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,struct in_addr*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct node_host*,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 

struct node_host *
FUNC7(const char *s, int mask)
{
	struct node_host	*h = NULL;
	struct in_addr		 ina;
	int			 bits = 32;

	FUNC4(&ina, 0, sizeof(struct in_addr));
	if (FUNC6(s, '/') != NULL) {
		if ((bits = FUNC2(AF_INET, s, &ina, sizeof(ina))) == -1)
			return (NULL);
	} else {
		if (FUNC3(AF_INET, s, &ina) != 1)
			return (NULL);
	}

	h = FUNC0(1, sizeof(struct node_host));
	if (h == NULL)
		FUNC1(1, "address: calloc");
	h->ifname = NULL;
	h->af = AF_INET;
	h->addr.v.a.addr.addr32[0] = ina.s_addr;
	FUNC5(h, bits);
	h->next = NULL;
	h->tail = h;

	return (h);
}