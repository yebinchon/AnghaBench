#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct roff {TYPE_1__* last; } ;
struct TYPE_2__ {int tok; int endspan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_BLK_NOTOPEN ; 
#define  ROFF_el 131 
#define  ROFF_ie 130 
#define  ROFF_if 129 
#define  ROFF_while 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC1 (struct roff*) ; 
 int FUNC2 (struct roff*) ; 

__attribute__((used)) static int
FUNC3(struct roff *r, int ln, int ppos)
{
	if (NULL == r->last) {
		FUNC0(MANDOCERR_BLK_NOTOPEN, ln, ppos, "\\}");
		return 0;
	}

	switch (r->last->tok) {
	case ROFF_el:
	case ROFF_ie:
	case ROFF_if:
	case ROFF_while:
		break;
	default:
		FUNC0(MANDOCERR_BLK_NOTOPEN, ln, ppos, "\\}");
		return 0;
	}

	if (r->last->endspan > -1) {
		FUNC0(MANDOCERR_BLK_NOTOPEN, ln, ppos, "\\}");
		return 0;
	}

	return FUNC2(r) + FUNC1(r);
}