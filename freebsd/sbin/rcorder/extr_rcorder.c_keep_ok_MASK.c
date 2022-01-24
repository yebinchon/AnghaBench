#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  s; struct TYPE_5__* next; } ;
typedef  TYPE_1__ strnodelist ;
struct TYPE_6__ {TYPE_1__* keyword_list; } ;
typedef  TYPE_2__ filenode ;

/* Variables and functions */
 TYPE_1__* keep_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(filenode *fnode)
{
	strnodelist *s;
	strnodelist *k;

	for (s = keep_list; s; s = s->next)
		for (k = fnode->keyword_list; k; k = k->next)
			if (FUNC0(k->s, s->s) == 0)
				return (1);

	/* an empty keep_list means every one */
	return (!keep_list);
}