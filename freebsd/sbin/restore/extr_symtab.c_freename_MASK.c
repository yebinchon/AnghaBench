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
struct strhdr {struct strhdr* next; } ;

/* Variables and functions */
 size_t STRTBLINCR ; 
 size_t FUNC0 (char*) ; 
 struct strhdr* strtblhdr ; 

void
FUNC1(char *name)
{
	struct strhdr *tp, *np;

	tp = &strtblhdr[FUNC0(name) / STRTBLINCR];
	np = (struct strhdr *)name;
	np->next = tp->next;
	tp->next = np;
}