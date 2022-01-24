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
struct TYPE_3__ {int mode; int mb_cur_max; } ;
typedef  TYPE_1__ _UESEncodingInfo ;

/* Variables and functions */
 int /*<<< orphan*/  C99 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MODE_C99 ; 
 int FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
/*ARGSUSED*/
FUNC3(_UESEncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
	const char *p;

	p = var;
	FUNC2((void *)ei, 0, sizeof(*ei));
	while (lenvar > 0) {
		switch (FUNC1(*p)) {
		case 'C':
			FUNC0(C99, ei->mode |= MODE_C99);
			break;
		}
		++p;
		--lenvar;
	}
	ei->mb_cur_max = (ei->mode & MODE_C99) ? 10 : 12;

	return (0);
}