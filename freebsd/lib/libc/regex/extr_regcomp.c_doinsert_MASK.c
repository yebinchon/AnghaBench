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
struct parse {scalar_t__ error; int* pbegin; int* pend; int /*<<< orphan*/ * strip; } ;
typedef  int sopno ;
typedef  int /*<<< orphan*/  sop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 () ; 
 int NPAREN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct parse *p, sop op, size_t opnd, sopno pos)
{
	sopno sn;
	sop s;
	int i;

	/* avoid making error situations worse */
	if (p->error != 0)
		return;

	sn = FUNC1();
	FUNC0(op, opnd);		/* do checks, ensure space */
	FUNC2(FUNC1() == sn+1);
	s = p->strip[sn];

	/* adjust paren pointers */
	FUNC2(pos > 0);
	for (i = 1; i < NPAREN; i++) {
		if (p->pbegin[i] >= pos) {
			p->pbegin[i]++;
		}
		if (p->pend[i] >= pos) {
			p->pend[i]++;
		}
	}

	FUNC3((char *)&p->strip[pos+1], (char *)&p->strip[pos],
						(FUNC1()-pos-1)*sizeof(sop));
	p->strip[pos] = s;
}