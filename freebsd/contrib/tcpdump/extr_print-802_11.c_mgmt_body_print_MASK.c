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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  ST_ACTION 139 
#define  ST_ASSOC_REQUEST 138 
#define  ST_ASSOC_RESPONSE 137 
#define  ST_ATIM 136 
#define  ST_AUTH 135 
#define  ST_BEACON 134 
#define  ST_DEAUTH 133 
#define  ST_DISASSOC 132 
#define  ST_PROBE_REQUEST 131 
#define  ST_PROBE_RESPONSE 130 
#define  ST_REASSOC_REQUEST 129 
#define  ST_REASSOC_RESPONSE 128 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_str ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC17(netdissect_options *ndo,
                uint16_t fc, const uint8_t *src, const u_char *p, u_int length)
{
	FUNC2((ndo, "%s", FUNC15(st_str, "Unhandled Management subtype(%x)", FUNC1(fc))));

	/* There may be a problem w/ AP not having this bit set */
	if (FUNC0(fc))
		return FUNC16(ndo, p);
	switch (FUNC1(fc)) {
	case ST_ASSOC_REQUEST:
		return FUNC4(ndo, p, length);
	case ST_ASSOC_RESPONSE:
		return FUNC5(ndo, p, length);
	case ST_REASSOC_REQUEST:
		return FUNC13(ndo, p, length);
	case ST_REASSOC_RESPONSE:
		return FUNC14(ndo, p, length);
	case ST_PROBE_REQUEST:
		return FUNC11(ndo, p, length);
	case ST_PROBE_RESPONSE:
		return FUNC12(ndo, p, length);
	case ST_BEACON:
		return FUNC8(ndo, p, length);
	case ST_ATIM:
		return FUNC6();
	case ST_DISASSOC:
		return FUNC10(ndo, p, length);
	case ST_AUTH:
		return FUNC7(ndo, p, length);
	case ST_DEAUTH:
		return FUNC9(ndo, src, p, length);
	case ST_ACTION:
		return FUNC3(ndo, src, p, length);
	default:
		return 1;
	}
}