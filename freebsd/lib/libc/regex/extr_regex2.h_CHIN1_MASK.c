#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wint_t ;
struct TYPE_5__ {int* bmp; int invert; unsigned int nwides; scalar_t__* wides; unsigned int nranges; unsigned int ntypes; int /*<<< orphan*/ * types; TYPE_1__* ranges; scalar_t__ icase; } ;
typedef  TYPE_2__ cset ;
struct TYPE_4__ {scalar_t__ min; scalar_t__ max; } ;

/* Variables and functions */
 scalar_t__ NC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(cset *cs, wint_t ch)
{
	unsigned int i;

	FUNC0(ch >= 0);
	if (ch < NC)
		return (((cs->bmp[ch >> 3] & (1 << (ch & 7))) != 0) ^
		    cs->invert);
	for (i = 0; i < cs->nwides; i++) {
		if (cs->icase) {
			if (ch == FUNC2(cs->wides[i]) ||
			    ch == FUNC3(cs->wides[i]))
				return (!cs->invert);
		} else if (ch == cs->wides[i])
			return (!cs->invert);
	}
	for (i = 0; i < cs->nranges; i++)
		if (cs->ranges[i].min <= ch && ch <= cs->ranges[i].max)
			return (!cs->invert);
	for (i = 0; i < cs->ntypes; i++)
		if (FUNC1(ch, cs->types[i]))
			return (!cs->invert);
	return (cs->invert);
}