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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {scalar_t__ raw; } ;
struct be {scalar_t__ type; int asnlen; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ BE_SEQ ; 
 scalar_t__ BE_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,struct be*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct be*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct be*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct be*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static void
FUNC6(netdissect_options *ndo,
                const u_char *np, u_int length, int version)
{
	struct be elem;
	int count = 0;

	/* Sequence */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_SEQ) {
		FUNC0((ndo, "[!scoped PDU]"));
		FUNC2(ndo, &elem);
		return;
	}
	length = elem.asnlen;
	np = (const u_char *)elem.data.raw;

	/* contextEngineID (OCTET STRING) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_STR) {
		FUNC0((ndo, "[contextEngineID!=STR]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
	np += count;

	FUNC0((ndo, "E="));
	if (FUNC3(ndo, &elem) == -1)
		return;
	FUNC0((ndo, " "));

	/* contextName (OCTET STRING) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_STR) {
		FUNC0((ndo, "[contextName!=STR]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
	np += count;

	FUNC0((ndo, "C="));
	if (FUNC4(ndo, &elem) == -1)
		return;
	FUNC0((ndo, " "));

	FUNC5(ndo, np, length, version);
}