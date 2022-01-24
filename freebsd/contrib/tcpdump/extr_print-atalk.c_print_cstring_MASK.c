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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const char *
FUNC1(netdissect_options *ndo,
              register const char *cp, register const u_char *ep)
{
	register u_int length;

	if (cp >= (const char *)ep) {
		FUNC0((ndo, "%s", tstr));
		return (0);
	}
	length = *cp++;

	/* Spec says string can be at most 32 bytes long */
	if (length > 32) {
		FUNC0((ndo, "[len=%u]", length));
		return (0);
	}
	while ((int)--length >= 0) {
		if (cp >= (const char *)ep) {
			FUNC0((ndo, "%s", tstr));
			return (0);
		}
		FUNC0((ndo, "%c", *cp++));
	}
	return (cp);
}