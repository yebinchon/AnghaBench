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
typedef  int u_int32 ;
typedef  scalar_t__ u_int ;
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  tag ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  vn_mode; int /*<<< orphan*/  count; int /*<<< orphan*/  first; int /*<<< orphan*/  last; int /*<<< orphan*/  rmtadr; } ;
typedef  TYPE_1__ mon_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 char* addr_fmt ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* last_fmt ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char const*,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static void
FUNC11(
	mon_entry *	mon,
	int		count
	)
{
	const char first_fmt[] =	"first.%d";
	const char ct_fmt[] =		"ct.%d";
	const char mv_fmt[] =		"mv.%d";
	const char rs_fmt[] =		"rs.%d";
	char	tag[32];
	u_char	sent[6]; /* 6 tag=value pairs */
	u_int32 noise;
	u_int	which;
	u_int	remaining;
	const char * pch;

	remaining = FUNC0(sent);
	FUNC1(sent);
	noise = (u_int32)(FUNC7() ^ (FUNC7() << 16));
	while (remaining > 0) {
		which = (noise & 7) % FUNC0(sent);
		noise >>= 3;
		while (sent[which])
			which = (which + 1) % FUNC0(sent);

		switch (which) {

		case 0:
			FUNC8(tag, sizeof(tag), addr_fmt, count);
			pch = FUNC9(&mon->rmtadr);
			FUNC6(tag, pch, FUNC10(pch));
			break;

		case 1:
			FUNC8(tag, sizeof(tag), last_fmt, count);
			FUNC4(tag, &mon->last);
			break;

		case 2:
			FUNC8(tag, sizeof(tag), first_fmt, count);
			FUNC4(tag, &mon->first);
			break;

		case 3:
			FUNC8(tag, sizeof(tag), ct_fmt, count);
			FUNC3(tag, mon->count);
			break;

		case 4:
			FUNC8(tag, sizeof(tag), mv_fmt, count);
			FUNC5(tag, mon->vn_mode);
			break;

		case 5:
			FUNC8(tag, sizeof(tag), rs_fmt, count);
			FUNC2(tag, mon->flags);
			break;
		}
		sent[which] = TRUE;
		remaining--;
	}
}