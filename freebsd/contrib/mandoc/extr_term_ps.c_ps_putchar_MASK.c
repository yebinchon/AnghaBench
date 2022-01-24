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
struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {int flags; char* psmarg; int /*<<< orphan*/  psmargcur; int /*<<< orphan*/  pdfbytes; } ;

/* Variables and functions */
 int PS_MARGINS ; 
 int /*<<< orphan*/  FUNC0 (struct termp*,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void
FUNC2(struct termp *p, char c)
{
	int		 pos;

	/* See ps_printf(). */

	if ( ! (PS_MARGINS & p->ps->flags)) {
		FUNC1(c);
		p->ps->pdfbytes++;
		return;
	}

	FUNC0(p, 2);

	pos = (int)p->ps->psmargcur++;
	p->ps->psmarg[pos++] = c;
	p->ps->psmarg[pos] = '\0';
}