#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int uas; int dm; int bpv; int fse; int crce; int rcrce; int es; int les; int ses; int bes; int oofs; int css; } ;
struct TYPE_4__ {int uas; int dm; int bpv; int fse; int crce; int rcrce; int es; int les; int ses; int bes; int oofs; int css; } ;
struct e1_statistics {int cursec; int totsec; TYPE_3__* interval; TYPE_2__ total; int /*<<< orphan*/  status; TYPE_1__ currnt; } ;
struct TYPE_6__ {int uas; int dm; int bpv; int fse; int crce; int rcrce; int es; int les; int ses; int bes; int oofs; int css; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERIAL_GETESTAT ; 
 char* chan_name ; 
 scalar_t__ fflag ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct e1_statistics*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4 (int fd, int need_header)
{
	struct e1_statistics st;
	int i, maxi;

	if (need_header)
		FUNC3 ("Chan\t Unav/Degr  Bpv/Fsyn  CRC/RCRC  Err/Lerr  Sev/Bur   Oof/Slp  Status\n");

	if (FUNC1 (fd, SERIAL_GETESTAT, &st) < 0)
		return;
	FUNC3 ("%s\t", chan_name);

	/* Unavailable seconds, degraded minutes */
	FUNC2 (0, st.currnt.uas, st.cursec);
	FUNC2 (1, 60 * st.currnt.dm, st.cursec);

	/* Bipolar violations, frame sync errors */
	FUNC2 (0, st.currnt.bpv, st.cursec);
	FUNC2 (1, st.currnt.fse, st.cursec);

	/* CRC errors, remote CRC errors (E-bit) */
	FUNC2 (0, st.currnt.crce, st.cursec);
	FUNC2 (1, st.currnt.rcrce, st.cursec);

	/* Errored seconds, line errored seconds */
	FUNC2 (0, st.currnt.es, st.cursec);
	FUNC2 (1, st.currnt.les, st.cursec);

	/* Severely errored seconds, bursty errored seconds */
	FUNC2 (0, st.currnt.ses, st.cursec);
	FUNC2 (1, st.currnt.bes, st.cursec);

	/* Out of frame seconds, controlled slip seconds */
	FUNC2 (0, st.currnt.oofs, st.cursec);
	FUNC2 (1, st.currnt.css, st.cursec);

	FUNC3 (" %s\n", FUNC0 (st.status));

	if (fflag) {
		/* Print total statistics. */
		FUNC3 ("\t");
		FUNC2 (0, st.total.uas, st.totsec);
		FUNC2 (1, 60 * st.total.dm, st.totsec);

		FUNC2 (0, st.total.bpv, st.totsec);
		FUNC2 (1, st.total.fse, st.totsec);

		FUNC2 (0, st.total.crce, st.totsec);
		FUNC2 (1, st.total.rcrce, st.totsec);

		FUNC2 (0, st.total.es, st.totsec);
		FUNC2 (1, st.total.les, st.totsec);

		FUNC2 (0, st.total.ses, st.totsec);
		FUNC2 (1, st.total.bes, st.totsec);

		FUNC2 (0, st.total.oofs, st.totsec);
		FUNC2 (1, st.total.css, st.totsec);

		FUNC3 (" -- Total\n");

		/* Print 24-hour history. */
		maxi = (st.totsec - st.cursec) / 900;
		if (maxi > 48)
			maxi = 48;
		for (i=0; i<maxi; ++i) {
			FUNC3 ("       ");
			FUNC2 (0, st.interval[i].uas, 15*60);
			FUNC2 (1, 60 * st.interval[i].dm, 15*60);

			FUNC2 (0, st.interval[i].bpv, 15*60);
			FUNC2 (1, st.interval[i].fse, 15*60);

			FUNC2 (0, st.interval[i].crce, 15*60);
			FUNC2 (1, st.interval[i].rcrce, 15*60);

			FUNC2 (0, st.interval[i].es, 15*60);
			FUNC2 (1, st.interval[i].les, 15*60);

			FUNC2 (0, st.interval[i].ses, 15*60);
			FUNC2 (1, st.interval[i].bes, 15*60);

			FUNC2 (0, st.interval[i].oofs, 15*60);
			FUNC2 (1, st.interval[i].css, 15*60);

			if (i < 3)
				FUNC3 (" -- %dm\n", (i+1)*15);
			else
				FUNC3 (" -- %dh %dm\n", (i+1)/4, (i+1)%4*15);
		}
	}
}