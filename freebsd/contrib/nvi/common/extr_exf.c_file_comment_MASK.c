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
typedef  void* recno_t ;
struct TYPE_5__ {void* lno; } ;
typedef  TYPE_1__ SCR ;
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_SCR_TOP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,int /*<<< orphan*/ ,char**,size_t*) ; 

__attribute__((used)) static void
FUNC2(SCR *sp)
{
	recno_t lno;
	size_t len;
	CHAR_T *p;

	for (lno = 1; !FUNC1(sp, lno, 0, &p, &len) && len == 0; ++lno);
	if (p == NULL)
		return;
	if (p[0] == '#') {
		FUNC0(sp, SC_SCR_TOP);
		while (!FUNC1(sp, ++lno, 0, &p, &len))
			if (len < 1 || p[0] != '#') {
				sp->lno = lno;
				return;
			}
	} else if (len > 1 && p[0] == '/' && p[1] == '*') {
		FUNC0(sp, SC_SCR_TOP);
		do {
			for (; len > 1; --len, ++p)
				if (p[0] == '*' && p[1] == '/') {
					sp->lno = lno;
					return;
				}
		} while (!FUNC1(sp, ++lno, 0, &p, &len));
	} else if (len > 1 && p[0] == '/' && p[1] == '/') {
		FUNC0(sp, SC_SCR_TOP);
		p += 2;
		len -= 2;
		do {
			for (; len > 1; --len, ++p)
				if (p[0] == '/' && p[1] == '/') {
					sp->lno = lno;
					return;
				}
		} while (!FUNC1(sp, ++lno, 0, &p, &len));
	}
}