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
struct urwlock {int dummy; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct urwlock*,struct timespec*) ; 
 scalar_t__ FUNC1 (struct urwlock*) ; 

__attribute__((used)) static inline int
FUNC2(struct urwlock *rwlock, struct timespec *tsp)
{

	if (FUNC1(rwlock) == 0)
		return (0);
	return (FUNC0(rwlock, tsp));
}