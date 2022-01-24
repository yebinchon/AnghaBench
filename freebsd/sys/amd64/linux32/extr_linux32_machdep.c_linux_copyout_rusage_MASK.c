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
struct rusage {int dummy; } ;
struct l_rusage {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rusage*,struct l_rusage*) ; 
 int FUNC1 (struct l_rusage*,void*,int) ; 

int
FUNC2(struct rusage *ru, void *uaddr)
{
	struct l_rusage lru;

	FUNC0(ru, &lru);

	return (FUNC1(&lru, uaddr, sizeof(struct l_rusage)));
}