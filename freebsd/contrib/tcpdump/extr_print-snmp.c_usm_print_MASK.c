#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {int /*<<< orphan*/  integer; scalar_t__ raw; } ;
struct be {scalar_t__ type; scalar_t__ asnlen; TYPE_1__ data; } ;
struct TYPE_9__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_2__ netdissect_options ;

/* Variables and functions */
 scalar_t__ BE_INT ; 
 scalar_t__ BE_SEQ ; 
 scalar_t__ BE_STR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__,struct be*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct be*) ; 
 int FUNC3 (TYPE_2__*,struct be*) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
          const u_char *np, u_int length)
{
        struct be elem;
	int count = 0;

	/* Sequence */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_SEQ) {
		FUNC0((ndo, "[!usm]"));
		FUNC2(ndo, &elem);
		return;
	}
	length = elem.asnlen;
	np = (const u_char *)elem.data.raw;

	/* msgAuthoritativeEngineID (OCTET STRING) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_STR) {
		FUNC0((ndo, "[msgAuthoritativeEngineID!=STR]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
	np += count;

	/* msgAuthoritativeEngineBoots (INTEGER) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC0((ndo, "[msgAuthoritativeEngineBoots!=INT]"));
		FUNC2(ndo, &elem);
		return;
	}
	if (ndo->ndo_vflag)
		FUNC0((ndo, "B=%d ", elem.data.integer));
	length -= count;
	np += count;

	/* msgAuthoritativeEngineTime (INTEGER) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC0((ndo, "[msgAuthoritativeEngineTime!=INT]"));
		FUNC2(ndo, &elem);
		return;
	}
	if (ndo->ndo_vflag)
		FUNC0((ndo, "T=%d ", elem.data.integer));
	length -= count;
	np += count;

	/* msgUserName (OCTET STRING) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_STR) {
		FUNC0((ndo, "[msgUserName!=STR]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
        np += count;

	FUNC0((ndo, "U="));
	if (FUNC3(ndo, &elem) == -1)
		return;
	FUNC0((ndo, " "));

	/* msgAuthenticationParameters (OCTET STRING) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_STR) {
		FUNC0((ndo, "[msgAuthenticationParameters!=STR]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
        np += count;

	/* msgPrivacyParameters (OCTET STRING) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_STR) {
		FUNC0((ndo, "[msgPrivacyParameters!=STR]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
        np += count;

	if ((u_int)count < length)
		FUNC0((ndo, "[%d extra after usm SEQ]", length - count));
}