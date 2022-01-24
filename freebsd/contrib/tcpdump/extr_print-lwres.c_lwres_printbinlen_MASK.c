#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2(netdissect_options *ndo,
                  const char *p0)
{
	const char *p;
	uint16_t l;
	int i;

	p = p0;
	if (p + 2 > (const char *)ndo->ndo_snapend)
		goto trunc;
	l = FUNC0(p);
	if (p + 2 + l > (const char *)ndo->ndo_snapend)
		goto trunc;
	p += 2;
	for (i = 0; i < l; i++)
		FUNC1((ndo, "%02x", *p++));
	return p - p0;

  trunc:
	return -1;
}