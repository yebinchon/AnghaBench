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
typedef  int u_int32 ;
typedef  scalar_t__ u_int ;
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  tag ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_4__ {int /*<<< orphan*/  rflags; int /*<<< orphan*/  mflags; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ restrict_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int RESLIST_FIELDS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static void
FUNC13(
	restrict_u *	pres,
	int		ipv6,
	u_int		idx
	)
{
	const char addr_fmtu[] =	"addr.%u";
	const char mask_fmtu[] =	"mask.%u";
	const char hits_fmt[] =		"hits.%u";
	const char flags_fmt[] =	"flags.%u";
	char		tag[32];
	u_char		sent[RESLIST_FIELDS]; /* 4 tag=value pairs */
	int		noisebits;
	u_int32		noise;
	u_int		which;
	u_int		remaining;
	sockaddr_u	addr;
	sockaddr_u	mask;
	const char *	pch;
	char *		buf;
	const char *	match_str;
	const char *	access_str;

	FUNC10(&addr, &mask, pres, ipv6);
	remaining = FUNC0(sent);
	FUNC2(sent);
	noise = 0;
	noisebits = 0;
	while (remaining > 0) {
		if (noisebits < 2) {
			noise = FUNC5() ^ (FUNC5() << 16);
			noisebits = 31;
		}
		which = (noise & 0x3) % FUNC0(sent);
		noise >>= 2;
		noisebits -= 2;

		while (sent[which])
			which = (which + 1) % FUNC0(sent);

		/* XXX: Numbers?  Really? */
		switch (which) {

		case 0:
			FUNC9(tag, sizeof(tag), addr_fmtu, idx);
			pch = FUNC11(&addr);
			FUNC4(tag, pch, FUNC12(pch));
			break;

		case 1:
			FUNC9(tag, sizeof(tag), mask_fmtu, idx);
			pch = FUNC11(&mask);
			FUNC4(tag, pch, FUNC12(pch));
			break;

		case 2:
			FUNC9(tag, sizeof(tag), hits_fmt, idx);
			FUNC3(tag, pres->count);
			break;

		case 3:
			FUNC9(tag, sizeof(tag), flags_fmt, idx);
			match_str = FUNC7(pres->mflags);
			access_str = FUNC6(pres->rflags);
			if ('\0' == match_str[0]) {
				pch = access_str;
			} else {
				FUNC1(buf);
				FUNC9(buf, LIB_BUFLENGTH, "%s %s",
					 match_str, access_str);
				pch = buf;
			}
			FUNC4(tag, pch, FUNC12(pch));
			break;
		}
		sent[which] = TRUE;
		remaining--;
	}
	FUNC8((int)idx);
}