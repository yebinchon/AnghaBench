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
typedef  size_t u_int ;
typedef  int ptrdiff_t ;
struct TYPE_2__ {scalar_t__ func; } ;

/* Variables and functions */
 int* FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int,int /*<<< orphan*/ ) ; 
 int* tfd ; 
 int tfd_alloc ; 
 int tfd_used ; 
 int /*<<< orphan*/  tim_cmp ; 
 TYPE_1__* tims ; 
 size_t tims_alloc ; 
 int tims_used ; 

__attribute__((used)) static void
FUNC3(void)
{
	int *pp;
	u_int i;

	if(tims_used > tfd_alloc) {
		tfd_alloc = tims_used;
		tfd  = FUNC0(tfd, sizeof(int *) * tfd_alloc);
	}

	pp = tfd;

	for(i = 0; i < tims_alloc; i++)
		if(tims[i].func)
			*pp++ = i;
	FUNC1(pp - tfd == (ptrdiff_t)tims_used);

	tfd_used = tims_used;
	if(tfd_used > 1)
		FUNC2(tfd, tfd_used, sizeof(int), tim_cmp);
}