#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_char ;
struct isakmp_gen {int /*<<< orphan*/  len; int /*<<< orphan*/  critical; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct isakmp_gen const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isakmp_gen*,struct isakmp_gen const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static const u_char *
FUNC7(netdissect_options *ndo, u_char tpay,
		const struct isakmp_gen *ext)
{
	struct isakmp_gen e;

	FUNC1(*ext);
	FUNC3(&e, ext, sizeof(e));
	FUNC4(ndo, FUNC2(tpay), e.critical);

	FUNC0((ndo," len=%d", FUNC5(e.len) - 4));
	if (2 < ndo->ndo_vflag && 4 < FUNC5(e.len)) {
		/* Print the entire payload in hex */
		FUNC0((ndo," "));
		if (!FUNC6(ndo, (const uint8_t *)(ext + 1), FUNC5(e.len) - 4))
			goto trunc;
	}
	return (const u_char *)ext + FUNC5(e.len);
trunc:
	FUNC0((ndo," [|%s]", FUNC2(tpay)));
	return NULL;
}