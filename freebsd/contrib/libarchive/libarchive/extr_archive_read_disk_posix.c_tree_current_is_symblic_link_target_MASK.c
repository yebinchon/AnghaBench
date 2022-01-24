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
struct tree {TYPE_1__* current_filesystem; } ;
struct stat {scalar_t__ st_dev; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ dev; } ;

/* Variables and functions */
 struct stat* FUNC0 (struct tree*) ; 
 struct stat* FUNC1 (struct tree*) ; 

__attribute__((used)) static int
FUNC2(struct tree *t)
{
	static const struct stat *lst, *st;

	lst = FUNC0(t);
	st = FUNC1(t);
	return (st != NULL && lst != NULL &&
	    (int64_t)st->st_dev == t->current_filesystem->dev &&
	    st->st_dev != lst->st_dev);
}