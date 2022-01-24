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
struct command {scalar_t__** t_dcom; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__** FUNC0 (scalar_t__**) ; 
 int QUOTES ; 
 int _DOL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__**) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ noexec ; 

void
FUNC3(struct command *t)
{
    Char **pp;
    Char *p;

    if (noexec)
	return;
    /* Note that t_dcom isn't trimmed thus !...:q's aren't lost */
    for (pp = t->t_dcom; (p = *pp++) != NULL;) {
	for (; *p; p++) {
	    if (FUNC2(*p, _DOL | QUOTES)) {	/* $, \, ', ", ` */
		Char **expanded;

		expanded = FUNC0(t->t_dcom);	/* found one */
		FUNC1(t->t_dcom);
		t->t_dcom = expanded;
		return;
	    }
	}
    }
}