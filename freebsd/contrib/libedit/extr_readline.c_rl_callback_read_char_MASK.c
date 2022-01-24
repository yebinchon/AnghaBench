#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const** t_c; } ;
struct TYPE_6__ {TYPE_1__ el_tty; } ;

/* Variables and functions */
 size_t C_EOF ; 
 int /*<<< orphan*/  EL_UNBUFFERED ; 
 size_t TS_IO ; 
 TYPE_2__* e ; 
 char* FUNC0 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * rl_linefunc ; 
 char* FUNC2 (char const*) ; 
 void FUNC3 (char const*) ; 

void
FUNC4(void)
{
	int count = 0, done = 0;
	const char *buf = FUNC0(e, &count);
	char *wbuf;

	if (buf == NULL || count-- <= 0)
		return;
	if (count == 0 && buf[0] == e->el_tty.t_c[TS_IO][C_EOF])
		done = 1;
	if (buf[count] == '\n' || buf[count] == '\r')
		done = 2;

	if (done && rl_linefunc != NULL) {
		FUNC1(e, EL_UNBUFFERED, 0);
		if (done == 2) {
			if ((wbuf = FUNC2(buf)) != NULL)
				wbuf[count] = '\0';
		} else
			wbuf = NULL;
		(*(void (*)(const char *))rl_linefunc)(wbuf);
		FUNC1(e, EL_UNBUFFERED, 1);
	}
}