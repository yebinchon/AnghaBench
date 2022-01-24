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
struct ohash {int dummy; } ;
struct expr {struct expr* next; } ;

/* Variables and functions */
 struct ohash* FUNC0 (struct expr*,struct ohash*) ; 

__attribute__((used)) static struct ohash *
FUNC1(struct expr *e, struct ohash *htab)
{
	while (e != NULL) {
		htab = FUNC0(e, htab);
		e = e->next;
	}
	return htab;
}