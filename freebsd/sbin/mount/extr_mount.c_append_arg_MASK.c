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
struct cpa {int c; int sz; char** a; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char** FUNC1 (char**,int) ; 

__attribute__((used)) static void
FUNC2(struct cpa *sa, char *arg)
{
	if (sa->c + 1 == sa->sz) {
		sa->sz = sa->sz == 0 ? 8 : sa->sz * 2;
		sa->a = FUNC1(sa->a, sizeof(*sa->a) * sa->sz);
		if (sa->a == NULL)
			FUNC0(1, "realloc failed");
	}
	sa->a[++sa->c] = arg;
}