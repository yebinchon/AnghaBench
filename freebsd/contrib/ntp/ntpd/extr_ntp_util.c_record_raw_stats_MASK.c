#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_int32 ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_10__ {int l_ui; } ;
typedef  TYPE_1__ l_fp ;
struct TYPE_11__ {int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 scalar_t__ MJD_1900 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_7__ rawstats ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stats_control ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void
FUNC7(
	sockaddr_u *srcadr,
	sockaddr_u *dstadr,
	l_fp	*t1,		/* originate timestamp */
	l_fp	*t2,		/* receive timestamp */
	l_fp	*t3,		/* transmit timestamp */
	l_fp	*t4,		/* destination timestamp */
	int	leap,
	int	version,
	int	mode,
	int	stratum,
	int	ppoll,
	int	precision,
	double	root_delay,	/* seconds */
	double	root_dispersion,/* seconds */
	u_int32	refid,
	int	len,
	u_char	*extra
	)
{
	l_fp	now;
	u_long	day;

	if (!stats_control)
		return;

	FUNC3(&now);
	FUNC1(&rawstats, now.l_ui);
	day = now.l_ui / 86400 + MJD_1900;
	now.l_ui %= 86400;
	if (rawstats.fp != NULL) {
		FUNC2(rawstats.fp, "%lu %d %s %s %d %d %d %d %d %d %d %d %d %d %.6f %.6f %d",
		    day, FUNC6(&now, 3),
		    srcadr ? FUNC5(srcadr) : "-",
		    dstadr ? FUNC5(dstadr) : "-",
		    FUNC6(t1, 9), FUNC6(t2, 9),
		    FUNC6(t3, 9), FUNC6(t4, 9),
		    leap, version, mode, stratum, ppoll, precision,
		    root_delay, root_dispersion, FUNC4(refid, stratum));
		if (len > 0) {
			int i;

			FUNC2(rawstats.fp, " %d: ", len);
			for (i = 0; i < len; ++i) {
				FUNC2(rawstats.fp, "%02x", extra[i]);
			}
		}
		FUNC2(rawstats.fp, "\n");
		FUNC0(rawstats.fp);
	}
}