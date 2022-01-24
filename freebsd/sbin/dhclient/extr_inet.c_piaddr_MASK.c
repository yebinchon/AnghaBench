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
struct in_addr {int dummy; } ;
struct iaddr {scalar_t__ len; int /*<<< orphan*/  iabuf; } ;
typedef  int /*<<< orphan*/  pbuf ;

/* Variables and functions */
 char* FUNC0 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC1 (struct in_addr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

char *
FUNC3(struct iaddr addr)
{
	static char pbuf[32];
	struct in_addr a;
	char *s;

	FUNC1(&a, &(addr.iabuf), sizeof(struct in_addr));

	if (addr.len == 0)
		FUNC2(pbuf, "<null address>", sizeof(pbuf));
	else {
		s = FUNC0(a);
		if (s != NULL)
			FUNC2(pbuf, s, sizeof(pbuf));
		else
			FUNC2(pbuf, "<invalid address>", sizeof(pbuf));
	}
	return (pbuf);
}