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
struct TYPE_3__ {int ttyfd; char* tty; scalar_t__ used; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 TYPE_1__* sessions ; 
 int sessions_nalloc ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static char *
FUNC4(void)
{
	static char buf[1024];
	int i;
	char *cp;

	buf[0] = '\0';
	for (i = 0; i < sessions_nalloc; i++) {
		Session *s = &sessions[i];
		if (s->used && s->ttyfd != -1) {

			if (FUNC2(s->tty, "/dev/", 5) != 0) {
				cp = FUNC3(s->tty, '/');
				cp = (cp == NULL) ? s->tty : cp + 1;
			} else
				cp = s->tty + 5;

			if (buf[0] != '\0')
				FUNC0(buf, ",", sizeof buf);
			FUNC0(buf, cp, sizeof buf);
		}
	}
	if (buf[0] == '\0')
		FUNC1(buf, "notty", sizeof buf);
	return buf;
}