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
typedef  int Strbuf ;
struct TYPE_2__ {char* iname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char const) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 TYPE_1__* mesg ; 
 size_t nsig ; 
 size_t tw_index ; 

int
FUNC2(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    FUNC1(dir);
    FUNC1(flags);
    for (;tw_index < nsig; tw_index++) {
	const char *ptr;

	if (mesg[tw_index].iname == NULL)
	    continue;

	for (ptr = mesg[tw_index].iname; *ptr != '\0'; ptr++)
	    FUNC0(res, *ptr);
	tw_index++;
	return 1;
    }
    return 0;
}