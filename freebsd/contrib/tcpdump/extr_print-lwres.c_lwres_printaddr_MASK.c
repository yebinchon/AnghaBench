#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
struct TYPE_3__ {int /*<<< orphan*/  family; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ lwres_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC7(netdissect_options *ndo,
                const lwres_addr_t *ap)
{
	uint16_t l;
	const char *p;
	int i;

	FUNC3(ap->length);
	l = FUNC0(&ap->length);
	/* XXX ap points to packed struct */
	p = (const char *)&ap->length + sizeof(ap->length);
	FUNC4(*p, l);

	switch (FUNC1(&ap->family)) {
	case 1:	/* IPv4 */
		if (l < 4)
			return -1;
		FUNC2((ndo, " %s", FUNC6(ndo, p)));
		p += sizeof(struct in_addr);
		break;
	case 2:	/* IPv6 */
		if (l < 16)
			return -1;
		FUNC2((ndo, " %s", FUNC5(ndo, p)));
		p += sizeof(struct in6_addr);
		break;
	default:
		FUNC2((ndo, " %u/", FUNC1(&ap->family)));
		for (i = 0; i < l; i++)
			FUNC2((ndo, "%02x", *p++));
	}

	return p - (const char *)ap;

  trunc:
	return -1;
}