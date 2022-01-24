#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_6__ {int l_ui; } ;
typedef  TYPE_1__ l_fp ;
struct TYPE_7__ {int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 scalar_t__ MJD_1900 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_3__ peerstats ; 
 int /*<<< orphan*/  stats_control ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

void
FUNC6(
	sockaddr_u *addr,
	int	status,
	double	offset,		/* offset */
	double	delay,		/* delay */
	double	dispersion,	/* dispersion */
	double	jitter		/* jitter */
	)
{
	l_fp	now;
	u_long	day;

	if (!stats_control)
		return;

	FUNC3(&now);
	FUNC1(&peerstats, now.l_ui);
	day = now.l_ui / 86400 + MJD_1900;
	now.l_ui %= 86400;
	if (peerstats.fp != NULL) {
		FUNC2(peerstats.fp,
		    "%lu %d %d %x %.9f %.9f %.9f %.9f\n", day,
		    FUNC5(&now, 3), FUNC4(addr), status, offset,
		    delay, dispersion, jitter);
		FUNC0(peerstats.fp);
	}
}