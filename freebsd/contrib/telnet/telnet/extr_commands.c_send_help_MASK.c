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
struct sendlist {char* name; char* help; } ;

/* Variables and functions */
 struct sendlist* Sendlist ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC1(void)
{
    struct sendlist *s;	/* pointer to current command */
    for (s = Sendlist; s->name; s++) {
	if (s->help)
	    FUNC0("%-15s %s\n", s->name, s->help);
    }
    return(0);
}