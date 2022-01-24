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
typedef  int /*<<< orphan*/  tbuf ;
typedef  int /*<<< orphan*/  abuf ;
struct TYPE_3__ {int type; int answer; int /*<<< orphan*/  id_num; } ;
typedef  TYPE_1__ CTL_RESPONSE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int NANSWERS ; 
 int NTYPES ; 
 char** answers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 char** types ; 

void
FUNC3(const char *cp, CTL_RESPONSE *rp)
{
	const char *tp, *ap;
	char tbuf[80], abuf[80];

	if (rp->type > NTYPES) {
		(void)FUNC1(tbuf, sizeof(tbuf), "type %d", rp->type);
		tp = tbuf;
	} else
		tp = types[rp->type];
	if (rp->answer > NANSWERS) {
		(void)FUNC1(abuf, sizeof(abuf), "answer %d", rp->answer);
		ap = abuf;
	} else
		ap = answers[rp->answer];
	FUNC2(LOG_DEBUG, "%s: %s: %s, id %d", cp, tp, ap, FUNC0(rp->id_num));
}