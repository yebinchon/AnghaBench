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
struct ohash_info {int /*<<< orphan*/  free; int /*<<< orphan*/  calloc; int /*<<< orphan*/  alloc; } ;
struct ohash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ohash*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohash*,int,struct ohash_info*) ; 
 int /*<<< orphan*/  xcalloc ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  xmalloc ; 

int
FUNC2(void)
{
	struct ohash h;
	struct ohash_info i;
	i.alloc = xmalloc;
	i.calloc = xcalloc;
	i.free = xfree;
	FUNC1(&h, 2, &i);
	FUNC0(&h);
	return 0;
}