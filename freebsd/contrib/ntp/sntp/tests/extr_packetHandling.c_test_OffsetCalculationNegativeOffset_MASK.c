#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct pkt {int precision; int /*<<< orphan*/  xmt; int /*<<< orphan*/  rec; int /*<<< orphan*/  org; int /*<<< orphan*/  reftime; void* rootdisp; void* rootdelay; } ;
struct TYPE_5__ {unsigned long l_ui; unsigned long l_uf; } ;
typedef  TYPE_1__ l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ JAN_1970 ; 
 int /*<<< orphan*/  LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  FUNC3 (double,double) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct timeval*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pkt*,int /*<<< orphan*/ ,struct timeval*,double*,double*,double*) ; 

void
FUNC8(void)
{
	struct pkt	rpkt;
	l_fp		reftime, tmp;
	struct timeval	dst;
	double		offset, precision, synch_distance;

	rpkt.precision = -1;
	rpkt.rootdelay = FUNC2(FUNC0(0.5));
	rpkt.rootdisp = FUNC2(FUNC0(0.5));
	
	/* Synch Distance is (0.5+0.5)/2.0, or 0.5 */
	FUNC6(&reftime);
	FUNC1(&reftime, &rpkt.reftime);

	/* T1 - Originate timestamp */
	tmp.l_ui = 1000000001UL;
	tmp.l_uf = 0UL;
	FUNC1(&tmp, &rpkt.org);

	/* T2 - Receive timestamp */
	tmp.l_ui = 1000000000UL;
	tmp.l_uf = 2147483648UL;
	FUNC1(&tmp, &rpkt.rec);

	/*/ T3 - Transmit timestamp */
	tmp.l_ui = 1000000001UL;
	tmp.l_uf = 2147483648UL;
	FUNC1(&tmp, &rpkt.xmt);

	/* T4 - Destination timestamp as standard timeval */
	tmp.l_ui = 1000000003UL;
	tmp.l_uf = 0UL;

	FUNC4(&tmp, &dst);
	dst.tv_sec -= JAN_1970;

	FUNC7(&rpkt, LEN_PKT_NOMAC, &dst, &offset, &precision, &synch_distance);

	FUNC3(-1, offset);
	FUNC3(1. / FUNC5(1), precision);
	FUNC3(1.3333483333333334, synch_distance);
}