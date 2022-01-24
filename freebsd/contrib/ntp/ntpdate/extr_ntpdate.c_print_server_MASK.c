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
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct server {scalar_t__ stratum; int precision; int leap; int xmtcnt; int filter_nextpt; int /*<<< orphan*/  offset; int /*<<< orphan*/  dispersion; scalar_t__ delay; int /*<<< orphan*/ * filter_offset; int /*<<< orphan*/ * filter_delay; int /*<<< orphan*/  xmt; int /*<<< orphan*/  org; int /*<<< orphan*/  reftime; int /*<<< orphan*/  rootdisp; scalar_t__ rootdelay; int /*<<< orphan*/  refid; int /*<<< orphan*/  trust; int /*<<< orphan*/  srcadr; } ;
typedef  int /*<<< orphan*/  s_fp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int NTP_SHIFT ; 
 int PEER_SHIFT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int sys_samples ; 
 char* FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(
	register struct server *pp,
	FILE *fp
	)
{
	register int i;
	char junk[5];
	const char *str;

	if (pp->stratum == 0)		/* Nothing received => nothing to print */
		return;

	if (!debug) {
		(void) FUNC1(fp, "server %s, stratum %d, offset %s, delay %s\n",
				   FUNC8(&pp->srcadr), pp->stratum,
				   FUNC4(&pp->offset, 6), FUNC2((s_fp)pp->delay, 5));
		return;
	}

	(void) FUNC1(fp, "server %s, port %d\n",
			   FUNC8(&pp->srcadr), FUNC5(((struct sockaddr_in*)&(pp->srcadr))->sin_port));

	(void) FUNC1(fp, "stratum %d, precision %d, leap %c%c, trust %03o\n",
			   pp->stratum, pp->precision,
			   pp->leap & 0x2 ? '1' : '0',
			   pp->leap & 0x1 ? '1' : '0',
			   pp->trust);

	if (FUNC0(pp->stratum)) {
		str = (char *) &pp->refid;
		for (i=0; i<4 && str[i]; i++) {
			junk[i] = (FUNC3(str[i]) ? str[i] : '.');
		}
		junk[i] = 0; // force terminating 0
		str = junk;
	} else {
		str = FUNC6(pp->refid);
	}
	(void) FUNC1(fp,
			"refid [%s], root delay %s, root dispersion %s\n",
			str, FUNC2((s_fp)pp->rootdelay, 6),
			FUNC9(pp->rootdisp, 6));

	if (pp->xmtcnt != pp->filter_nextpt)
		(void) FUNC1(fp, "transmitted %d, in filter %d\n",
			   pp->xmtcnt, pp->filter_nextpt);

	(void) FUNC1(fp, "reference time:      %s\n",
			   FUNC7(&pp->reftime));
	(void) FUNC1(fp, "originate timestamp: %s\n",
			   FUNC7(&pp->org));
	(void) FUNC1(fp, "transmit timestamp:  %s\n",
			   FUNC7(&pp->xmt));

	if (sys_samples > 1) {
		(void) FUNC1(fp, "filter delay: ");
		for (i = 0; i < NTP_SHIFT; i++) {
			if (i == (NTP_SHIFT>>1))
				(void) FUNC1(fp, "\n              ");
			(void) FUNC1(fp, " %-10.10s", 
				(i<sys_samples ? FUNC2(pp->filter_delay[i], 5) : "----"));
		}
		(void) FUNC1(fp, "\n");

		(void) FUNC1(fp, "filter offset:");
		for (i = 0; i < PEER_SHIFT; i++) {
			if (i == (PEER_SHIFT>>1))
				(void) FUNC1(fp, "\n              ");
			(void) FUNC1(fp, " %-10.10s", 
				(i<sys_samples ? FUNC4(&pp->filter_offset[i], 6): "----"));
		}
		(void) FUNC1(fp, "\n");
	}

	(void) FUNC1(fp, "delay %s, dispersion %s, ",
			   FUNC2((s_fp)pp->delay, 5), FUNC9(pp->dispersion, 5));

	(void) FUNC1(fp, "offset %s\n\n",
			   FUNC4(&pp->offset, 6));
}