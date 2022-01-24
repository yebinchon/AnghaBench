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
struct parse {scalar_t__ ssize; int /*<<< orphan*/ * stripdata; int /*<<< orphan*/ * strip; } ;
typedef  scalar_t__ sopno ;
typedef  int /*<<< orphan*/  sop ;
typedef  int /*<<< orphan*/  RCHAR_T ;

/* Variables and functions */
 scalar_t__ MEMLIMIT ; 
 scalar_t__ FUNC0 (struct parse*) ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(struct parse *p, sopno size)
{
	sop *sp;
	RCHAR_T *dp;
	sopno osize;

	if (p->ssize >= size)
		return 1;

	osize = p->ssize;
	p->ssize = size;
	if (FUNC0(p) > MEMLIMIT)
		goto oomem;
	sp = FUNC2(p->strip, p->ssize * sizeof(sop));
	if (sp == NULL)
		goto oomem;
	p->strip = sp;
	dp = FUNC2(p->stripdata, p->ssize * sizeof(RCHAR_T));
	if (dp == NULL) {
oomem:
		p->ssize = osize;
		FUNC1(REG_ESPACE);
		return 0;
	}
	p->stripdata = dp;
	return 1;
}