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
struct TYPE_3__ {int flags; char const* name; int last_ttl; int num_mcast; int received; int sent; int notsent; scalar_t__ starttime; scalar_t__ peercnt; int /*<<< orphan*/  ignore_packets; int /*<<< orphan*/  bcast; int /*<<< orphan*/  sin; } ;
typedef  TYPE_1__ endpt ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int IFSTATS_FIELDS ; 
 int INT_BCASTOPEN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ current_time ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char const*,scalar_t__) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static void
FUNC12(
	endpt *	la,
	u_int	ifnum
	)
{
	const char addr_fmtu[] =	"addr.%u";
	const char bcast_fmt[] =	"bcast.%u";
	const char en_fmt[] =		"en.%u";	/* enabled */
	const char name_fmt[] =		"name.%u";
	const char flags_fmt[] =	"flags.%u";
	const char tl_fmt[] =		"tl.%u";	/* ttl */
	const char mc_fmt[] =		"mc.%u";	/* mcast count */
	const char rx_fmt[] =		"rx.%u";
	const char tx_fmt[] =		"tx.%u";
	const char txerr_fmt[] =	"txerr.%u";
	const char pc_fmt[] =		"pc.%u";	/* peer count */
	const char up_fmt[] =		"up.%u";	/* uptime */
	char	tag[32];
	u_char	sent[IFSTATS_FIELDS]; /* 12 tag=value pairs */
	int	noisebits;
	u_int32 noise;
	u_int	which;
	u_int	remaining;
	const char *pch;

	remaining = FUNC0(sent);
	FUNC1(sent);
	noise = 0;
	noisebits = 0;
	while (remaining > 0) {
		if (noisebits < 4) {
			noise = FUNC7() ^ (FUNC7() << 16);
			noisebits = 31;
		}
		which = (noise & 0xf) % FUNC0(sent);
		noise >>= 4;
		noisebits -= 4;

		while (sent[which])
			which = (which + 1) % FUNC0(sent);

		switch (which) {

		case 0:
			FUNC9(tag, sizeof(tag), addr_fmtu, ifnum);
			pch = FUNC10(&la->sin);
			FUNC6(tag, pch, FUNC11(pch));
			break;

		case 1:
			FUNC9(tag, sizeof(tag), bcast_fmt, ifnum);
			if (INT_BCASTOPEN & la->flags)
				pch = FUNC10(&la->bcast);
			else
				pch = "";
			FUNC6(tag, pch, FUNC11(pch));
			break;

		case 2:
			FUNC9(tag, sizeof(tag), en_fmt, ifnum);
			FUNC3(tag, !la->ignore_packets);
			break;

		case 3:
			FUNC9(tag, sizeof(tag), name_fmt, ifnum);
			FUNC4(tag, la->name, FUNC11(la->name));
			break;

		case 4:
			FUNC9(tag, sizeof(tag), flags_fmt, ifnum);
			FUNC2(tag, (u_int)la->flags);
			break;

		case 5:
			FUNC9(tag, sizeof(tag), tl_fmt, ifnum);
			FUNC3(tag, la->last_ttl);
			break;

		case 6:
			FUNC9(tag, sizeof(tag), mc_fmt, ifnum);
			FUNC3(tag, la->num_mcast);
			break;

		case 7:
			FUNC9(tag, sizeof(tag), rx_fmt, ifnum);
			FUNC3(tag, la->received);
			break;

		case 8:
			FUNC9(tag, sizeof(tag), tx_fmt, ifnum);
			FUNC3(tag, la->sent);
			break;

		case 9:
			FUNC9(tag, sizeof(tag), txerr_fmt, ifnum);
			FUNC3(tag, la->notsent);
			break;

		case 10:
			FUNC9(tag, sizeof(tag), pc_fmt, ifnum);
			FUNC5(tag, la->peercnt);
			break;

		case 11:
			FUNC9(tag, sizeof(tag), up_fmt, ifnum);
			FUNC5(tag, current_time - la->starttime);
			break;
		}
		sent[which] = TRUE;
		remaining--;
	}
	FUNC8((int)ifnum);
}